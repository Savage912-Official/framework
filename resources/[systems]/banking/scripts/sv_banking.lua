Cooldowns = {}
Attempts = {}
BankAccounts = {}

-- [[ Functions ]] --

function Get(account, key)
    return BankAccounts[account][key]
end
exports("Get", Get)

function Set(source, account, key, value)
    BankAccounts[account][key] = value
    exports.GHMattiMySQL:QueryAsync("UPDATE bank_accounts SET "..key.." = "..value.." WHERE account_id = @account_id", {
        ["@account_id"] = account
    })
    -- TriggerClientEvent("banking:updateBank", source, account, key, value)
end
exports("Set", Set)

function AddBank(source, account, amount, notify)
    if type(amount) ~= number then return end

    local balance = Get(account, "balance")
    if not balance then return end
        
    Set(source, account, "balance", balance + amount)
   
    if notify then
		if amount > 0 then
			notify = "$"..tostring(exports.misc:FormatNumber(amount)).." has been added to your account!"
		else
			notify = "$"..tostring(exports.misc:FormatNumber(math.abs(amount))).." has been deducted from your account!"
		end
		TriggerClientEvent("notify:sendAlert", source, "inform", notify, 7000)
	end`
end
exports("AddBank", AddBank)

-- [[ Events: Net ]] --
RegisterNetEvent("banking:initAccounts")
AddEventHandler("banking:initAccounts", function(source, character_id)
    local ownedAccounts = exports.GHMattiMySQL:QueryResult("SELECT bank_accounts.id, bank_accounts.account_id, bank_accounts.balance, bank_accounts.owner_id from bank_accounts WHERE owner_id = @character_id", {
        ["@character_id"] = character_id,
    })

    local sharedAccounts = exports.GHMattiMySQL:QueryResult("SELECT bank_accounts.id, bank_accounts.account_id, bank_accounts.balance, bank_accounts.owner_id FROM bank_accounts_shared INNER JOIN bank_accounts WHERE bank_accounts.id = bank_accounts_shared.account AND bank_accounts_shared.character_id = @character_id", {
        ["@character_id"] = character_id,
    })

    for account in ownedAccounts do
        if not BankAccounts[account.account_id] then
            BankAccounts[account.account_id] = account
        end
    end

    for account in sharedAccounts do
        if not BankAccounts[account.account_id] then
            BankAccounts[account.account_id] = account
        end
    end

end)

RegisterNetEvent("banking:getAccountTransactions", function(account)
    if not account then return end

    local transactions = exports.GHMattiMySQL:QueryResult("SELECT * from bank_accounts_transactions WHERE account_id = @account_id", {
        ["@account_id"] = account
    })
end)

RegisterNetEvent("interact:on_bank-card")
AddEventHandler("interact:on_bank-card", function()
	local source = source
	local canAfford = exports.inventory:CanAfford(source, Config.Cards.Price)
	if not canAfford then return end
	
	if exports.inventory:GiveItem(source, Config.Cards.Item) then
		exports.log:Add({
			source = source,
			verb = "bought",
			noun = Config.Cards.Item,
		})

		exports.inventory:TakeBills(source, Config.Cards.Price)
	end
end)