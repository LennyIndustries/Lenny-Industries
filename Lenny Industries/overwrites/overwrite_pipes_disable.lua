if not settings.startup["Pipe_Status"].value then
	for i, obj in pairs(data.raw["pipe"]) do
		obj.fast_replaceable_group = "pipe"
		obj.collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile"}
	end

	for i, obj in pairs(data.raw["pipe-to-ground"]) do
		obj.fast_replaceable_group = "pipe-to-ground"
		obj.collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile"}
	end
end
