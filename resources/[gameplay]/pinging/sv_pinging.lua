RegisterNetEvent("ping:send")
AddEventHandler("ping:send", function(target)
	local source = source
	if type(target) ~= "number" then return end

	-- Get target ped.
	local targetPed = GetPlayerPed(target)
	if not targetPed or not DoesEntityExist(targetPed) then
		TriggerClientEvent("chat:addMessage", source, "Invalid target!")
		return
	end

	-- Chat message.
	TriggerEvent("chat:notify", { class = "inform", text = "Ping!" })
	
	-- Ask target to ping.
	exports.interact:SendConfirm(source, target, ("[%s] wants to know your location"):format(source), function(didAccept)
		if not didAccept then return end
		
		exports.log:Add({
			source = source,
			target = target,
			noun = "pinged",
			verb = "their location to",
		})

		TriggerClientEvent("ping:receive", source, GetEntityCoords(targetPed))
	end)
end)