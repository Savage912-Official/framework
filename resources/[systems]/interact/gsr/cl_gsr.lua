Config.GSR = {
	Distance = 4.0,
	Item = "Gunshot Residue Kit",
	Anim = {
		Dict = "amb@world_human_stand_mobile@female@standing@call@enter",
		Name = "enter",
		Flag = 49,
	},
	Duration = 3000
}

--[[ Functions ]]--

function SendMessage(target, message, value)
	TriggerServerEvent("interaction:send", target, message, value)
end
exports("SendMessage", SendMessage)

Messages["gsr-request"] = function(source, message, value)
	SendMessage(source, "gsr-respond", exports.evidence:DidShoot(true))
end

Messages["gsr-respond"] = function(source, message, value)
	local typeof
	if value then
		typeof = "success"
		message = "positive"
	else
		typeof = "error"
		message = "negative"
	end
	TriggerEvent("chat:notify", { class="inform", text=("They came back %s!"):format(message)})
end

--[[ Items ]]--
AddEventHandler("inventory:use", function(item, slot, cb)
	if item.name == Config.GSR.Item then
		if IsPedInAnyVehicle(PlayerPedId(), false) then return end

		local anim = Config.GSR.Anim
		if not anim then return end

		local player, playerPed, playerDist = exports.oldutils:GetNearestPlayer(Config.GSR.Distance)
		if player == 0 then 
			TriggerEvent("chat:notify", "No player within range!", "error")
		else
			cb(Config.GSR.Duration, Config.GSR.Anim)
		end
	end
end)

AddEventHandler("inventory:useFinish", function(item, slot)
	if item.name == Config.GSR.Item then
		local player, playerPed, playerDist = exports.oldutils:GetNearestPlayer(Config.GSR.Distance)
		if player == 0 then
			TriggerEvent("chat:notify", "No player within range!", "error")
		else
			SendMessage(player, "gsr-request")
		end
	end
end)