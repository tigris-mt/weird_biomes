minetest.register_biome({
    name = "rocky",
    node_top = "default:gravel",
    depth_top = 1,
    node_filler = "default:gravel",
    depth_filler = 1,
    node_stone = "default:stone",
    node_riverbed = "default:gravel",
    depth_riverbed = 2,
    y_min = weird_biomes.secondary_min,
    y_max = weird_biomes.max.y,
    heat_point = 50,
    humidity_point = 10,
})
