minetest.register_biome({
    name = "lava",
    node_top = "default:stone",
    depth_top = 1,
    node_filler = "default:stone",
    depth_filler = 1,
    node_stone = "default:stone",
    node_riverbed = "default:obsidian",
    depth_riverbed = 2,
    y_min = weird_biomes.secondary_min,
    y_max = weird_biomes.max.y,
    heat_point = 90,
    humidity_point = 40,
    node_water = "default:lava_source",
    node_river_water = "default:lava_source",
})

minetest.register_ore({
    ore_type = "blob",
    ore = "caverealms:hot_cobble",
    wherein = {"default:stone"},
    clust_scarcity = 3^3,
    clust_size = 4,
    clust_num_ores = 24,
    y_min = weird_biomes.secondary_ore_min,
    y_max = weird_biomes.max.y,
    biomes = {"lava"},
})
