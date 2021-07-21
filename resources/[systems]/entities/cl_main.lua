Main.grids = {}
Main.cached = {}
Main.objects = {}

--[[ Functions: Main ]]--
function Main:Update()
	local ped = PlayerPedId()
	local pedCoords = GetEntityCoords(ped)

	local coords = GetFinalRenderedCamCoord()
	local nearbyGrids = Grids:GetImmediateGrids(coords, Config.GridSize)
	local nearbyCache = {}

	-- Load grids.
	for _, gridId in ipairs(nearbyGrids) do
		local grid = self.grids[gridId]
		local cachedGrid = self.cached[gridId]
		if grid and not cachedGrid then
			-- Cache grid.
			self.cached[gridId] = grid

			-- Load objects.
			for objectId, object in pairs(grid) do
				object:Load()
			end
		end
		nearbyCache[gridId] = true
	end

	-- Update grids.
	for gridId, grid in pairs(self.cached) do
		if nearbyCache[gridId] then
			for objectId, object in pairs(grid) do
				object:Update(pedCoords)
			end
		else
			-- Uncache grid.
			self.cached[gridId] = nil

			-- Unload objects.
			for objectId, object in pairs(grid) do
				object:Unload()
			end
		end
	end
end

function Main:Register(data)
	local instance = Object:Create(data)
	return instance.id
end
Main:Export("Register")

--[[ Threads ]]--
Citizen.CreateThread(function()
	while true do
		Main:Update()
		Citizen.Wait(1000)
	end
end)

--[[ Events ]]--
AddEventHandler("entities:stop", function()
	for gridId, grid in pairs(Main.cached) do
		for objectId, object in pairs(grid) do
			object:Unload()
		end
	end
end)

AddEventHandler("interact:onNavigate", function(id)
	local object = Main.objects[id]
	if object then
		object:OnInteract()
	end
end)