Main.characters = {}

function Main:CreateCharacter(data)
	TriggerServerEvent(Main.event.."create", data)
end

function Main:RegisterCharacter(character)
	character = Character:Create(character)
	
	self.characters[character.id] = character

	if Menu.characters then
		Menu.characters:UpdateList()
	end
end

function Main:UpdateCharacters(characters)
	-- Cache characters.
	self.characters = {}
	for _, character in pairs(characters) do
		self.characters[character.id] = Character:Create(character)
	end

	-- Restore from cache.
	if self.restoreActive ~= nil then
		self.activeCharacter = self.characters[self.restoreActive]
		self.restoreActive = nil
	end

	-- Update menu.
	if Menu.characters then
		Menu.characters:UpdateList()
	end

	-- Done loading.
	self.loaded = true
end

function Main:SelectCharacter(id)
	TriggerServerEvent(self.event.."select", id)
end

function Main:_SelectCharacter(id)
	local character = (id and self.characters[id]) or nil

	self.activeCharacter = character
	
	if character then
		Menu:Destroy("characters")
		Menu:Destroy("selection")
		Menu:Destroy("create")
		UI:Focus(false)

		local coords = character:GetPosition()
		
		exports.spawning:Spawn()
	else
		exports.spawning:Init()
	end

	-- Trigger event.
	TriggerEvent(self.event.."selected", character)
end

function Main:GetCharacters()
	return self.characters
end

function Main:GetCharacter()
	return self.activeCharacter
end

function Main:Get(key)
	local character = self:GetCharacter()
	if character == nil then return end

	return character:Get(key)
end

function Main:Set(key, value)
	local character = self:GetCharacter()
	if character == nil then return end

	character[key] = value
end

function Main:IsSelected()
	return self.activeCharacter ~= nil
end

function Main:Cache()
	if GetResourceState("cache") ~= "started" then return end

	local activeCharacter = (self.activeCharacter and self.activeCharacter.id) or nil

	exports.cache:Set("Character", activeCharacter)
end

function Main:RestoreCache()
	if GetResourceState("cache") ~= "started" then return end

	local activeCharacter = exports.cache:Get("Character")

	self.restoreActive = activeCharacter

	exports.cache:Set("Character", nil)
end

--[[ Events ]]--
AddEventHandler(Main.event.."start", function()
	Main:RestoreCache()
end)

AddEventHandler(Main.event.."stop", function()
	Main:Cache()
end)

RegisterNetEvent(Main.event.."load")
AddEventHandler(Main.event.."load", function(characters)
	Main:UpdateCharacters(characters)
end)

RegisterNetEvent(Main.event.."select")
AddEventHandler(Main.event.."select", function(id)
	Main:_SelectCharacter(id)
end)

RegisterNetEvent(Main.event.."update")
AddEventHandler(Main.event.."update", function(data)
	for k, v in pairs(data) do
		Main:Set(k, v)
	end
end)