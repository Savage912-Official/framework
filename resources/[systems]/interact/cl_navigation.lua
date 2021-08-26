Navigation = {
	controls = {
		1,
		2,
		21,
		24,
		25,
	},
	options = {},
}

--[[ Functions ]]--
function Navigation:Toggle(value)
	if value then
		if exports.ui:HasFocus() then
			return
		end

		SetCursorLocation(0.5, 0.5)
	end
	
	self.open = value
	
	SetNuiFocus(value, value)
	SetNuiFocusKeepInput(value)

	TriggerEvent("interact:navigate", value)

	SendNUIMessage({
		method = "toggleNavigation",
		data = {
			value = value,
		}
	})
end

function Navigation:AddOption(data)
	while not Interaction.ready do
		Citizen.Wait(0)
	end

	SendNUIMessage({
		method = "addOption",
		data = data,
	})
end

function Navigation:RemoveOption(id)
	SendNUIMessage({
		method = "removeOption",
		data = id,
	})
end

function Navigation:Update()
	if not self.open then return end

	for _, control in ipairs(self.controls) do
		DisableControlAction(0, control)
	end
end

--[[ Threads ]]--
Citizen.CreateThread(function()
	while true do
		Navigation:Update()

		Citizen.Wait(0)
	end
end)

--[[ Exports ]]--
exports("AddOption", function(...)
	Navigation:AddOption(...)
end)

exports("RemoveOption", function(...)
	Navigation:RemoveOption(...)
end)

--[[ NUI Callbacks ]]--
RegisterNUICallback("closeNavigation", function(data, cb)
	cb(true)

	SetNuiFocus(false, false)
	SetNuiFocusKeepInput(false)
end)

RegisterNUICallback("selectNavigation", function(id, cb)
	cb(true)

	SetNuiFocus(false, false)
	SetNuiFocusKeepInput(false)

	TriggerEvent("interact:onNavigate", id)
	TriggerEvent("interact:onNavigate_"..tostring(id))
end)

--[[ Commands ]]--
RegisterKeyMapping("+nsrp_navigate", "Interact - Navigation Wheel", "KEYBOARD", "LMENU")

RegisterCommand("+nsrp_navigate", function(source, args, command)
	if not IsControlEnabled(0, 52) then
		return
	end
	
	Navigation:Toggle(true)
end)

RegisterCommand("-nsrp_navigate", function(source, args, command)
	Navigation:Toggle(false)
end)