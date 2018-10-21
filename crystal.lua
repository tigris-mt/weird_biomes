minetest.register_biome({
    name = "warm_crystal",
    node_top = "default:stone",
    depth_top = 1,
    node_filler = "default:stone",
    depth_filler = 1,
    node_stone = "default:stone",
    node_riverbed = "default:sand",
    depth_riverbed = 2,
    y_min = 1,
    y_max = weird_biomes.max.y,
    heat_point = 80,
    humidity_point = 10,
})

minetest.register_biome({
    name = "warm_crystal_ocean",
    node_top = "default:sand",
    depth_top = 1,
    node_filler = "default:sand",
    depth_filler = 2,
    node_stone = "default:stone",
    node_riverbed = "default:sand",
    depth_riverbed = 2,
    y_min = weird_biomes.secondary_min,
    y_max = 0,
    heat_point = 80,
    humidity_point = 10,
})

minetest.register_biome({
    name = "cold_crystal",
    node_top = "default:stone",
    depth_top = 1,
    node_filler = "default:stone",
    depth_filler = 1,
    node_stone = "default:stone",
    node_riverbed = "caverealms:salt_crystal",
    depth_riverbed = 2,
    node_water_top = "caverealms:thin_ice",
    depth_water_top = 2,
    node_river_water = "caverealms:thin_ice",
    y_min = 1,
    y_max = weird_biomes.max.y,
    heat_point = 10,
    humidity_point = 10,
})

minetest.register_biome({
    name = "cold_crystal_ocean",
    node_top = "caverealms:salt_crystal",
    depth_top = 1,
    node_filler = "caverealms:salt_crystal",
    depth_filler = 2,
    node_stone = "default:stone",
    node_riverbed = "caverealms:salt_crystal",
    depth_riverbed = 2,
    node_water_top = "caverealms:thin_ice",
    depth_water_top = 2,
    node_river_water = "caverealms:thin_ice",
    y_min = weird_biomes.secondary_min,
    y_max = 0,
    heat_point = 10,
    humidity_point = 10,
})

weird_biomes.include("crystal_decorations.lua")
weird_biomes.include("crystal_ores.lua")
