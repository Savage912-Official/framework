Banking = {
    toggleMenu = false,
    isUsingAtm = false,
    nearestAtm = nil
}


function Banking:ToggleMenu(toggle, info)
    self.toggleMenu = toggle

    SetNuiFocus(self.toggleMenu, self.toggleMenu)
    SetNuiFocusKeepInput(false)

    SendNUIMessage({ open = self.toggleMenu })

    if not info then
        info = {}
    end

    local bills = exports.inventory:CountMoney()

    info.name = exports.character:GetName(PlayerId())
    info.bank = (Config.BankTypes[info.bank or ""] or {}).name
    info.available = bills

    SendNUIMessage({
        info = info
    })

    this.isUsingAtm = self.toggleMenu
end

function Banking:RegisterAtms()
    for k, atm in ipairs(Config.Atms) do
		local id = ("atm-%s"):format(k)
		
		exports.interact:Register({
			id = id,
			text = "Use ATM",
			model = atm.Model
		})

		AddEventHandler("interact:on_"..id, function()
			Banking:ToggleMenu(true, {
				bank = atm.Type,
			})
		end)
	end
end

function Banking:RegisterDesks()
	for k, desk in ipairs(Config.Desks) do
		local id = ("bankDesk-%s"):format(k)
		
		exports.interact:Register({
			id = id,
			embedded = {
				{
					id = "bank-card",
					text = Config.Cards.Item,
					items = {
						{ name = "Bills", amount = Config.Cards.Price },
					}
				},
				{
					id = "bank-coin",
					text = "Trade Coins",
				},
			},
			coords = desk.Coords,
			radius = desk.Radius,
		})
	end
end

--[[ Threads ]]--
Citizen.CreateThread(function()
	RegisterAtms()
	RegisterDesks()
end)

-- [[ NUI ]] --
RegisterNUICallback("withdraw", function(data)
    TriggerServerEvent("banking:withdraw", data)
end)

RegisterNUICallback("deposit", function(data)
    TriggerServerEvent("banking:deposit", data)
end)

RegisterNUICallback("transfer", function(data)
    TriggerServerEvent("banking:transfer", data)
end)

RegisterNUICallback("closeMenu", function(data)
    Banking:ToggleMenu()
end)
-- [[ Events ]] --
--[[ Resource Events ]]--
AddEventHandler("banking:clientStart", function()
	for k, bank in ipairs(Config.Banks) do
		local id = "bank-"..tostring(k)
		local kiosk = "kiosk-"..tostring(k)
		if not bank.NoBlip then
			exports.blips:CreateBlip(bank.Coords, Config.Blips.Bank, id)
		end
		exports.interact:Register({
			id = kiosk,
			embedded = {
				{
					id = id,
					text = Config.Interact.Text,
				},
				{
					id = "bank-card",
					text = Config.Cards.Item,
					items = {
						{ name = "Bills", amount = Config.Cards.Price },
					}
				},
				{
					id = "bank-coin",
					text = "Trade Coins",
				},
			},
			coords = bank.Coords,
			radius = Config.Interact.Radius,
		})
		
		bank.isBank = true

		AddEventHandler("interact:on_"..id, function()
			ToggleMenu(true, bank)
		end)
	end
end)

RegisterNetEvent("banking:load", function(data)
    SendNUIMessage({ commit = data })
end)