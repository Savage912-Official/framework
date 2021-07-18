Cache = {}

--[[ Threads ]]--
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(60000)

		for i = 1, GetNumPlayerIndices() do
			local source = tonumber(GetPlayerFromIndex(i - 1))
			if not source then goto continue end

			local user = exports.user:GetUser(source)
			if not user then goto continue end

			local cache = Cache[source]

			if not cache then
				cache = { responses = 0 }
				goto continue;
			end

			cache.responses = 0

			::continue::
		end
	end
end)

--[[ Events ]]--
RegisterNetEvent("admin-tools:update")
AddEventHandler("admin-tools:update", function(powerLevel)
	local source = source
	local user = exports.user:GetUser(source)
	local cache = Cache[source]

	if not cache then
		cache = { responses = 0 }
		Cache[source] = cache
	end

	cache.powerLevel = powerLevel
	cache.responses = cache.responses + 1
end)

RegisterNetEvent("admin-tools:delete")
AddEventHandler("admin-tools:delete", function(netId)
	local source = source

	local user = exports.user:GetUser(source)
	if not user or user.power_level < 10 then return end

	local entity = NetworkGetEntityFromNetworkId(netId)
	if not DoesEntityExist(entity) then return end

	DeleteEntity(entity)
end)

RegisterNetEvent("admin-tools:requestPlayers")
AddEventHandler("admin-tools:requestPlayers", function()
	local source = source
	local user = exports.user:GetUser(source)
	if not user then return end

	if user.power_level < Config.MinPowerLevel then
		return
	end

	local players = {}

	for i = 0, GetNumPlayerIndices() - 1 do
		local player = tonumber(GetPlayerFromIndex(i - 0))

		if player then
			user = exports.user:GetUser(player) or {}

			local character = exports.character:GetCharacter(player) or {}
			local bills, counterfeit, marked = table.unpack(exports.inventory:CountBills(player, true))
			
			players[i + 1] = {
				id = player,
				info = {
					{ "Character", {
						{ "ID", character.id },
						{ "Name", exports.character:GetName(player) },
						{ "Bank", character.bank },
						{ "Bills", bills },
						{ "Counterfeit", counterfeit },
						{ "Marked", marked },
						{ "DOB", character.dob },
						{ "Time Played", character.time_played },
						{ "Gender", character.gender },
					}},
					{ "User", {
						{ "ID", user.id },
						{ "Name", GetPlayerName(player) },
						{ "Identifier", user.identifier },
						{ "First Joined", os.date("%x", user.first_joined) },
						{ "Last Played", os.date("%x", user.last_played) },
						{ "Power Level", user.power_level },
						{ "Priority", user.priority },
					}},
				}
			}
		end
		::skip::
	end

	TriggerClientEvent("admin-tools:receivePlayers", source, players)
end)

exports.chat:RegisterCommand("report", function(source, args, rawCommand)
	local target = tonumber(args[1])
	if not target or target <= 0 or GetPlayerEndpoint(target) == nil then
		TriggerClientEvent("chat:addMessage", source, "Invalid target!")
		return
	end

	local reason = table.concat(args, " ")
	reason = reason:sub(args[1]:len() + 2)

	if reason:len() <= 1 then
		TriggerClientEvent("chat:addMessage", source, "Reason too short!")
		return
	end

	exports.log:Add({
		source = source,
		verb = "reported",
		extra = ("[%s] %s - %s"):format(target, exports.main:GetIdentifier(target, "steam"), reason),
		channel = "report",
	})

	TriggerClientEvent("chat:addMessage", source, "You reported ["..target.."]!")
end, {
	help = "Report somebody for breaking a rule. To complete a report, open a ticket on Discord! This only leaves a note in the logs.",
	params = {
		{ name = "ID", help = "ID of the player" },
		{ name = "Reason", help = "Reason for the report" },
	}
}, paramCount or -1, group)

exports.chat:RegisterCommand("a:flash", function(source, args, rawCommand)
	local target = tonumber(args[1])
	if not target then return end
	
	TriggerClientEvent("admin-tools:flash", -1, target)
end, {}, 1, 25)