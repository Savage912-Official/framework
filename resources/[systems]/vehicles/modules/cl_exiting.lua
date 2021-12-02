Exiting = {}

--[[ Functions: Exiting ]]--
function Exiting:Update()
	local state = LocalPlayer.state
	
	DisableControlAction(0, 75)

	if
		not DoesEntityExist(CurrentVehicle) or
		state.immobile
	then
		return
	end

	if IsDisabledControlJustReleased(0, 23) then
		Exiting:Activate()
	end
end

function Exiting:Activate()
	local vehicle = CurrentVehicle
	if not vehicle then return end

	local ped = PlayerPedId()
	local state = LocalPlayer.state

	-- Check door.
	local doorIndex = FindSeatPedIsIn(ped)
	if state.restrained and not IsVehicleDoorOpen(vehicle, doorIndex) then
		return
	end

	-- Enter vehicle.
	TaskLeaveVehicle(ped, vehicle, state.restrained and 256 or 64)
end

--[[ Listeners ]]--
Main:AddListener("Update", function()
	Exiting:Update()
end)