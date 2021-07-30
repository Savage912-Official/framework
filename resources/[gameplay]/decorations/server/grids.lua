Grid = {}
Grid.__index = Grid

--[[ Functions: Grid ]]--
function Grid:Create(id)
	Debug("Create grid: %s", id)

	local grid = setmetatable({
		id = id,
		players = {},
		decorations = {},
	}, Grid)

	Main.grids[id] = grid

	return grid
end

function Grid:Destroy()
	Main.grids[self.id] = nil
	
	Debug("Destroy grid: %s", self.id)
end

function Grid:Clean()
	if self:IsEmpty() then
		self:Destroy()
	end
end

function Grid:AddPlayer(source)
	Debug("Player added to grid: [%s] in %s", source, self.id)
	
	self.players[source] = true
end

function Grid:RemovePlayer(source)
	Debug("Player removed from grid: [%s] in %s", source, self.id)
	
	self.players[source] = nil

	self:Clean()
end

function Grid:AddDecoration(decoration)
	Debug("Decoration added to grid: %s in %s", decoration.id, self.id)

	self.decorations[tostring(decoration.id)] = decoration

	self:InformNearby("add", decoration)
end

function Grid:RemoveDecoration(id)
	Debug("Decoration removed from grid: %s in %s", id, self.id)
	
	self.decorations[tostring(id)] = nil

	self:InformNearby("remove", id)

	self:Clean()
end

function Grid:IsEmpty()
	for k, v in pairs(self.players) do
		return false
	end
	for k, v in pairs(self.decorations) do
		return false
	end
	return true
end

function Grid:InformNearby(...)
	if type(self.id) == "string" then
		self:InformAll(...)
	else
		local nearbyGrids = Grids:GetNearbyGrids(self.id, Config.GridSize)
		for _, gridId in ipairs(nearbyGrids) do
			local grid = Main.grids[gridId]
			if grid then
				grid:InformAll(...)
			end
		end
	end
end

function Grid:InformAll(event, ...)
	for source, _ in pairs(self.players) do
		TriggerClientEvent(Main.event..event, source, ...)
	end
end

--[[ Events ]]--
RegisterNetEvent("grids:enter"..Config.GridSize, function(gridId)
	local source = source
	if type(gridId) ~= "number" then return end

	Main:SetGrid(source, gridId)
	-- if os.clock() - player.time < 0.2 then
	-- 	Main.queue[source] = grid
	-- else
		
	-- end
end)

AddEventHandler("playerDropped", function(reason)
	local source = source
	Main.players[source] = nil
end)