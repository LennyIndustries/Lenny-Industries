for i, obj in pairs(data.raw["pipe"]) do
	obj.fast_replaceable_group = "pipe"
	obj.collision_mask = {"object-layer"}
end

for i, obj in pairs(data.raw["pipe-to-ground"]) do
	obj.fast_replaceable_group = "pipe-to-ground"
	obj.collision_mask = {"object-layer"}
end
