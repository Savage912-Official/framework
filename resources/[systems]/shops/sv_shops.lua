--[[ Functions: Main ]]--
function Main:_Init()
	self:LoadDatabase()
end

function Main:LoadDatabase()
	WaitForTable("decorations")

	RunQuery("sql/shops.sql")
end

--[[ Functions: Shop ]]--
function Shop:Load()
	-- Load from database.
	local result = exports.ghmattimysql:QueryResult("SELECT * FROM `shops` WHERE `id`=@id", {
		["@id"] = self.id,
	})[1] or {}

	-- Convert prices.
	self.prices = result.prices and json.decode(result.prices) or {}

	-- Convert result.
	result.containers = result.containers and json.decode(result.containers) or {}
	result.decorations = result.decorations and json.decode(result.decorations) or {}

	-- Load storage.
	local storage = self.info.Storage
	if storage then
		local container = exports.inventory:LoadContainer({
			id = result.storage,
			type = "shop",
			protected = true,
			coords = storage.Coords,
			filters = storage.Filters,
		}, true)

		if not container then
			error(("failed loading shop storage (%s)"):format(self.id))
		end

		self.storage = container.id
	end

	-- Load decorations.
	local decorations = self.info.Decorations
	if decorations then
		self.decorations = {}

		for id, data in pairs(decorations) do
			data.id = result.decorations[id]
			data.persistent = true

			local decoration = exports.decorations:LoadDecoration(data, true)
			if decoration then
				self.decorations[id] = decoration.id
			end
		end
	end

	-- Load containers.
	local containers = self.info.Containers
	if containers then
		self.containers = {}

		for id, data in pairs(containers) do
			data.id = result.containers[id]
			data.persistent = true
			data.type = "drop"
			data.name = data.text
			data.width = data.width or 3
			data.height = data.height or 2
			if data.factions then
				data.settings = {
					factions = data.factions or {},
				}
			end

			local container = exports.inventory:LoadContainer(data, true)
			if container then
				self.containers[id] = container.id
			end
		end
	end

	-- Save shop.
	local setters = "`containers`=@containers, `decorations`=@decorations"
	if self.storage then
		setters = setters..", `storage`=@storage"
	end

	exports.ghmattimysql:QueryAsync("INSERT INTO `shops` SET `id`=@id, "..setters.." ON DUPLICATE KEY UPDATE "..setters, {
		["@id"] = self.id,
		["@storage"] = self.storage,
		["@containers"] = json.encode(self.containers or {}),
		["@decorations"] = json.encode(self.decorations or {}),
	})
end

function Shop:AccessStorage(source)
	-- Verify player can access container.
	if not self:CanAccessStorage(source) then
		exports.user:TriggerTrap(source, false, ("accessing protected storage (shop: %s)"):format(self.id))
		return false
	end

	-- Get container id.
	local containerId = self.storage
	if not containerId then return end

	-- Add player to container.
	exports.inventory:Subscribe(source, containerId, true)

	TriggerClientEvent("inventory:toggle", source, true)

	return true
end

function Shop:CanAccessStorage(source)
	return exports.user:IsAdmin(source)
end

function Shop:StockContainer()
	local settings = self.info.Storage
	if not settings then return false end

	local containerId = self.storage
	if not containerId then return false end

	exports.inventory:ContainerEmpty(containerId)

	local filters = settings.Filters
	if filters and filters.item then
		for name, _ in pairs(filters.item) do
			local item = exports.inventory:GetItem(name)
			if not item then goto continue end
			if not exports.inventory:ContainerAddItem(containerId, name, item.stack*4 or 1) then
				break
			end
			::continue::
		end
	end

	return true
end

function Shop:GetStock()
	-- Get container id.
	local containerId = self.storage
	if not containerId then return end

	-- Check cache.
	local snowflake = exports.inventory:ContainerGet(containerId, "snowflake")
	if self.stock and self.snowflake == snowflake then
		return self.stock
	end

	-- Get container.
	local container = exports.inventory:GetContainer(containerId)
	if not container then return end

	-- Update stock.
	local stock = {}
	for slotId, slot in pairs(container.slots) do
		if (slot.durability or 1.0) > 0.25 then
			stock[slot.item_id] = (stock[slot.item_id] or 0) + (slot.quantity or 0)
		end
	end

	-- Cache stock.
	self.stock = stock
	self.snowflake = snowflake

	return stock
end

function Shop:Interact(npc, source)
	-- Check cooldown.
	if not PlayerUtil:CheckCooldown(source, 1.0, true) then return end
	
	-- Inform client.
	TriggerClientEvent("shops:loadShop", source, self.id, self:GetStock())
end

function Shop:Purchase(source, cart, paymentType)
	local totalPrice = 0
	local boughtPrice = 0
	local totalItems = 0
	local totalTax = 0
	local tax = 0

	for itemName, quantity in pairs(cart) do
		local item = exports.inventory:GetItem(itemName)
		if item and item.value then
			tax = ( quantity * ( item.value * Config.Tax ) )
			totalPrice = Round(totalPrice + ( quantity * ( item.value + tax ) ), 2)
			totalTax = Round(totalTax + tax, 2)
		end
	end
	
	local primaryAccount = exports.character:Get(source, "bank")
	if not primaryAccount then
		TriggerClientEvent("chat:notify", source, "You don't have a bank account?", "error")
		return true
	end

	if exports.banking:CanAfford(primaryAccount, totalPrice) then
		for item, quantity in pairs(cart) do
			local itemInfo = exports.inventory:GetItem(item)
			if not itemInfo then return false end
			result = exports.inventory:GiveItem(source, item, quantity)

			if result[1] then
				boughtPrice = boughtPrice + quantity * ((itemInfo.value) + (itemInfo.value * Config.Tax))
				totalItems = totalItems + quantity
			end
		end
		boughtPrice = Round(boughtPrice, 2)
		exports.banking:AddBank(source, primaryAccount, boughtPrice * -1)
		exports.banking:StateTax(totalTax)
	else
		TriggerClientEvent("chat:notify", source, "You don't have enough for that!", "error")
	end

	if boughtPrice > 0 then
		TriggerClientEvent("chat:notify", source, "You spent $"..boughtPrice.."!", "success")
	else
		TriggerClientEvent("chat:notify", source, "You didn't have room!", "error")
	end
	return true
end

--[[ Events: Net ]]--
RegisterNetEvent("shops:openStorage", function(id)
	local source = source

	-- Check cooldown.
	if not PlayerUtil:CheckCooldown(source, 1.0, true) then return end

	-- Get shop.
	local shop = Main.shops[id or false]
	if not shop then return end

	-- Open storage.
	if shop:AccessStorage(source) then
		exports.log:Add({
			source = source,
			verb = "accessed",
			noun = "storage",
			extra = id,
		})
	end
end)

RegisterNetEvent("shops:purchase", function(id, cart, paymentType, window)
	local source = source

	-- Check cooldown.
	if not PlayerUtil:CheckCooldown(source, 1.0, true) then return end

	-- Check input.
	if type(cart) ~= "table" then return end

	-- Get shop.
	local shop = Main.shops[id or false]
	if not shop then return end

	-- Make purchase.
	if shop:Purchase(source, cart, paymentType) then
		exports.log:Add({
			source = source,
			verb = "made",
			noun = "purchase",
			extra = id,
		})
	end
end)

--[[ Events ]]--
AddEventHandler("shops:start", function()
	Main:Init()
end)