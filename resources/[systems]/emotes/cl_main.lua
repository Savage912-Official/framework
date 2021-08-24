Main = {
	emotes = {},
	playing = {},
	queue = {},
}

--[[ Functions: Main ]]--
function Main:Init()
	for _, group in ipairs(Config.Groups) do
		for name, emote in pairs(group.Emotes) do
			self.emotes[name] = emote
		end
	end
end

function Main:Update()
	local ped = PlayerPedId()

	for id, emote in pairs(self.playing) do
		local settings = emote.settings or {}
		local isPlaying = settings.Dict and IsEntityPlayingAnim(ped, settings.Dict, settings.Name, 3)

		if
			not emote.noAutoplay and
			((emote.ped and emote.ped ~= ped) or
			(not isPlaying and settings.Flag and settings.Flag % 2 ~= 0 and settings.Flag % 4 ~= 0))
		then
			print("replay anim", id)
			emote:Play()
		elseif not isPlaying then
			print("anim over", id)
			
			emote:Remove()

			self.isForcing = nil
		end
	end
end

function Main:UpdateQueue()
	local data = self.queue[1]
	if not data or not data.id then return false end

	local duration = data.Duration or (data.Dict and math.floor(GetAnimDuration(data.Dict, data.Name) * 1000)) or 1000
	local emote = Emote:Create(data, data.id)

	table.remove(self.queue, 1)
	
	print("playing", duration, json.encode(data))

	Citizen.Wait(0)

	local startTime = GetGameTimer()

	while
		not emote.stopping and
		(GetGameTimer() - startTime < math.max(duration - 100, 0)) and
		(data.Dict and IsEntityPlayingAnim(PlayerPedId(), data.Dict, data.Name, 3))
	do
		Citizen.Wait(0)
	end

	return true
end

function Main:Queue(data)
	table.insert(self.queue, data)
end

function Main:Play(data, force)
	if type(data) == "string" then
		data = self.emotes[data]
	elseif not data then
		return
	end

	local id = (self.lastId or 0) + 1
	self.lastId = id

	if data.Sequence then
		self:Stop()
		
		for _, _data in ipairs(data.Sequence) do
			_data.id = id
			self:Queue(_data)
		end
	elseif not IsUpperBody(data.Flag) then
		self:Stop()

		data.id = id
		self:Queue(data)
	else
		Emote:Create(data, id)
	end

	if force then
		self:Stop(true)
	end

	return id
end
Export(Main, "Play")

function Main:Stop(p1, p2)
	print("cancel emote")

	local cancelEmote = nil
	local isLocked = false
	local ped = PlayerPedId()

	-- Get emote from p1.
	if type(p1) == "number" then
		cancelEmote = self.emotes[p1]
	end

	-- Clear normal animations.
	if cancelEmote then
		print("clearing anim", p1)

		cancelEmote:Remove()

		self.isForcing = nil
	else
		print("clearing anims")
		
		for k, emote in pairs(self.playing) do
			if emote.settings and emote.settings.Locked and not p1 then
				isLocked = true
			elseif not emote.Facial then
				emote.stopping = true
				emote:Remove()
			end
		end
	end

	-- Stop the actual animation.
	if #self.queue == 0 and not isLocked then
		if (not cancelEmote and p1) or p2 == true then
			ClearPedTasksImmediately(ped)
		elseif p2 ~= 2 then
			ClearPedTasks(ped)
		end
	end
end
Export(Main, "Stop")

function Main:PlayOnPed(ped, data)
	if not ped or not DoesEntityExist(ped) then return end

	data.ped = ped

	local emote = Emote:Create(data)
end
Export(Main, "PlayOnPed")

function Main:RemoveProps()
	local ped = PlayerPedId()
	for k, entity in ipairs(exports.oldutils:GetObjects()) do
		if DoesEntityExist(entity) and IsEntityAttachedToEntity(entity, ped) then
			Delete(entity)
		end
	end
end

--[[ Functions ]]--
function IsUpperBody(flag)
	return flag and ((flag >= 10 and flag <= 31) or (flag >= 48 and flag <= 63))
end

--[[ Threads ]]--
Citizen.CreateThread(function()
	while true do
		Main:Update()
		Citizen.Wait(200)
	end
end)

Citizen.CreateThread(function()
	while true do
		if Main:UpdateQueue() then
			Citizen.Wait(0)
		else
			Citizen.Wait(100)
		end
	end
end)

--[[ Events ]]--
AddEventHandler("emotes:clientStart", function()
	Main:Init()
end)

RegisterNetEvent("instances:join", function(id)
	Main:RemoveProps()
end)

RegisterNetEvent("instances:leave", function(id)
	Main:RemoveProps()
end)