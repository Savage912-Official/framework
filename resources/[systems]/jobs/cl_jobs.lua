--[[ Functions: Main ]]--
function Main:OnRegister(job)
	if job.Clocks then
		job:RegisterClocks(job.Clocks)
	end
end

--[[ Functions: Job ]]--
function Job:RegisterClocks(clocks)
	local job = self

	self.clockEntities = {}

	for k, clock in ipairs(clocks) do
		self.clockEntities[k] = exports.entities:Register({
			id = "clock-"..self.id..k,
			name = "Clock ("..self.id..")",
			coords = clock.Coords,
			radius = clock.Radius,
			navigation = {
				icon = "work",
				text = "Clock",
				job = self.id,
				clock = k,
			},
			condition = function(self)
				return job:IsHired()
			end,
		})
	end
end

function Job:IsHired()
	return exports.factions:Has(self.Faction, self.Group)
end

--[[ Events ]]--
AddEventHandler("interact:onNavigate", function(id, option)
	if not option.job and not option.clock then return end

	TriggerServerEvent("jobs:clock", option.job)
end)