--[[ Functions: Main ]]--
function Main.update:Ignition()
	
end

function Main:HasKey(vehicle)
	local playerContainer = exports.inventory:GetPlayerContainer(true)
	if not playerContainer then
		return false
	end

	if self.infoEntity ~= vehicle then
		return false
	end

	local vin = self.info["vin"]
	local slot = exports.inventory:ContainerFindFirst(playerContainer, "Vehicle Key", "return slot:GetField(1) == '"..vin.."'")

	return slot ~= nil
end

function Main:CanLock(vehicle)
	local class = GetVehicleClass(vehicle)
	if Config.Locking.Blacklist[class] then
		return false
	end

	return true
end

function Main:ToggleEngine()
	if not IsDriver then return end

	local netId = GetNetworkId(CurrentVehicle)
	if not netId then return end
	
	if not DoesVehicleHaveEngine(CurrentVehicle) then
		--print("no engine")
		return
	end

	TriggerServerEvent("vehicles:toggleEnigne", netId)
end

function Main:ToggleLock(override)
	local vehicle = IsInVehicle and CurrentVehicle or NearestVehicle
	if not vehicle or not DoesEntityExist(vehicle) then return end

	-- Check lockable.
	if not self:CanLock(vehicle) then return end
	
	-- Check key.
	if not override and not IsInVehicle and not self:HasKey(vehicle) then return end

	-- Get status.
	local status = GetVehicleDoorsLockedForPlayer(vehicle, Player) ~= 1

	-- Tell server to unlock.
	TriggerServerEvent("vehicles:toggleLock", GetNetworkId(vehicle), status)

	-- Play emote.
	if not override and not IsInVehicle then
		ClearPedTasks(Ped)
		
		exports.emotes:Play(Config.Locking.Anim)
	end
	
	-- Success!
	return true, status
end

--[[ Events ]]--
RegisterNetEvent("vehicles:toggleEngine", function(netId, state)
	local _netId = GetNetworkId(CurrentVehicle)
	if not _netId or _netId ~= netId then return end

	SetEntityAsMissionEntity(CurrentVehicle, true)
	SetVehicleEngineOn(CurrentVehicle, state, false, true)
end)

RegisterNetEvent("vehicles:toggleLock", function(netId, status)
	local vehicle = NetworkGetEntityFromNetworkId(netId)
	if not vehicle or not WaitForAccess(vehicle) then return end

	SetVehicleDoorsLockedForAllPlayers(vehicle, status)
end)

AddEventHandler("inventory:use", function(item, slot, cb)
	if item.name == "Field Kit" then
		exports.emotes:Play(Config.FieldKit.Anim)
		Citizen.Wait(2000)
		if NearestVehicle or IsInVehicle and CurrentVehicle then
			local success = exports.quickTime:Begin({ goalSize = 0.1, speed = 1.2	, stages = 6 })
			if success then
				if IsInVehicle then
					TriggerServerEvent("vehicles:fieldKit", GetNetworkId(CurrentVehicle))
				else
					local status = GetVehicleDoorsLockedForPlayer(NearestVehicle, Player) == 1
					if status then
						Main:ToggleLock(true)
					else
						TriggerEvent("chat:notify", { class="inform", text="Vehicle is already unlocked!"} )
					end
				end
			end
		end
		exports.emotes:Stop()
	end
end)

--[[ Commands ]]--
RegisterCommand("+nsrp_ignition", function()
	if not IsControlEnabled(0, 51) then
		return
	end

	Main:ToggleEngine()
end, true)

RegisterKeyMapping("+nsrp_ignition", "Vehicles - Ignition", "keyboard", "i")

--[[ Threads ]]--
Citizen.CreateThread(function()
	while true do
		if IsControlJustPressed(0, 182) and IsControlEnabled(0, 51) and IsInputDisabled(0) then
			Main:ToggleLock()
			Citizen.Wait(Config.Locking.Delay)
		else
			Citizen.Wait(0)
		end
	end
end)