local confirmations = {}

--[[ Functions ]]--
function SendConfirm(source, target, message, callback, distanceCheck)
	if confirmations[target] then return end

	if distanceCheck then
		local sourceCoords = GetEntityCoords(GetPlayerPed(source))
		local targetCoords = GetEntityCoords(GetPlayerPed(target))

		if #(sourceCoords - targetCoords) > 10.0 then
			return
		end
	end

	local confirmation = { id = os.time(), message = message }

	exports.log:Add({
		source = source,
		target = target,
		verb = "sent",
		noun = "message",
		extra = ("len: %s"):format(message:len()),
		channel = "misc",
	})

	TriggerClientEvent("interaction:receive", target, source, "confirm", confirmation)

	confirmation.callback = callback
	confirmations[target] = confirmation
end
exports("SendConfirm", SendConfirm)

local function CompleteConfirm(source, id, value)
	local confirmation = confirmations[source]
	confirmations[source] = nil

	if not confirmation or confirmation.id ~= id then return end
	
	if confirmation.callback then
		pcall(function()
			confirmation.callback(value)
		end)
	end
end

--[[ Events ]]--
RegisterNetEvent("interaction:confirm")
AddEventHandler("interaction:confirm", function(id, value)
	local source = source
	CompleteConfirm(source, id, value)
end)

--[[ Commands ]]--
for _, command in ipairs({"bill", "fine"}) do
	local help = ""
	if command == "bill" then
		help = "Send somebody a bill and receive money if they accept."
	elseif command == "fine" then
		help = "Request somebody pay a fine - the money goes nowhere."
	end
	exports.chat:RegisterCommand(command, function(source, args, rawCommand)
		local source = source
		if command == "fine" and not exports.jobs:IsInEmergency(source, "CanFine") then
			return
		end
		
		local target = tonumber(args[1])
		if not target then return end
		if source == target then return end

		local targetId = exports.character:Get(target, "id")
		if not targetId then return end

		local amount = tonumber(args[2])
		if not amount or amount <= 0 then return end

		SendConfirm(source, target, "You are receiving a "..command.." for $"..amount, function(value)
			local sourceMessage = ""
			local targetMessage = ""
			if value then
				local canAfford = false
				if command == "bill" then
					canAfford = exports.inventory:CanAfford(target, amount, 1, false)
					if canAfford then
						exports.inventory:TakeBills(target, amount, 1, false)
						exports.inventory:GiveItem(source, "Bills", amount)
					end
				elseif command == "fine" then
					canAfford = true
					exports.character:AddBank(target, -amount, false)
					exports.log:AddEarnings(target, "Fines", -amount)
				end
				if canAfford then
					sourceMessage = "They have paid your "..command.." for $"..amount.."!"
					targetMessage = "You have paid their "..command.." for $"..amount.."!"
				else
					sourceMessage = "They can't afford that!"
					targetMessage = "You can't afford that!"
				end
			else
				sourceMessage = "They have refused to pay your "..command.."!"
				targetMessage = "You have refused to pay their "..command.."!"
			end
			TriggerClientEvent("chat:addMessage", source, sourceMessage)
			TriggerClientEvent("chat:addMessage", target, targetMessage)
		end, true)
	end, {
		help = help,
		params = {
			{ name = "Target", help = "Somebody to "..command.."." },
			{ name = "Amount", help = "How much to "..command.." them." },
		}
	}, paramCount or -1, group)
end