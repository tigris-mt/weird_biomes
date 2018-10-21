minetest.register_biome({
    name = "rocky",
    node_top = "default:stone",
    depth_top = 1,
    node_filler = "default:stone",
    depth_filler = 1,
    node_stone = "default:stone",
    node_riverbed = "default:gravel",
    depth_riverbed = 2,
    y_min = 0,
    y_max = weird_biomes.max.y,
    heat_point = 50,
    humidity_point = 10,
})

minetest.register_biome({
    name = "rocky_ocean",
    node_top = "default:gravel",
    depth_top = 1,
    node_filler = "default:gravel",
    depth_filler = 2,
    node_stone = "default:stone",
    node_riverbed = "default:gravel",
    depth_riverbed = 2,
    y_min = weird_biomes.secondary_min,
    y_max = 0,
    heat_point = 50,
    humidity_point = 10,
})
