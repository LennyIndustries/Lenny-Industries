if settings.startup["LRobot_Status"].value then
	for name, entity in pairs(data.raw["logistic-robot"]) do
		entity.minable = nil
	end
end

if settings.startup["CRobot_Status"].value then
	for name, entity in pairs(data.raw["construction-robot"]) do
		entity.minable = nil
	end
end
