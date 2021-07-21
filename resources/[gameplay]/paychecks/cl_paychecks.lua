--[[ Events ]]--
AddEventHandler("paychecks:clientStart", function()
	local callbackId = "CollectPaycheck"

	exports.markers:CreateUsable(GetCurrentResourceName(), Config.Coords, callbackId, Config.Markers.Text, Config.Markers.DrawRadius, Config.Markers.Radius, Config.Markers.Blip)

	AddEventHandler("markers:use_"..callbackId, function()
		TriggerServerEvent("paychecks:request")
	end)
end)

RegisterNetEvent("paychecks:receive")
AddEventHandler("paychecks:receive", function(message, ...)
	exports.mythic_notify:SendAlert("inform", Config.Messages[message]:format(...), 10000)
end)