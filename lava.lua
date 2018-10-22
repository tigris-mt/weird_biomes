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
})

if minetest.get_modpath("caverealms") then
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
end

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"default:stone"},
    sidelen = 16,
    noise_params = {
        offset = 0,
        scale = 0.001,
        spread = {x = 200, y = 200, z = 200},
        seed = 329,
        octaves = 3,
        persist = 0.6
    },
    biomes = {"lava"},
    y_min = 0,
    y_max = weird_biomes.max.y,
    decoration = "default:lava_source",
})

local o = "default:obsidian"
local l = "default:lava_source"

minetest.register_decoration({
    deco_type = "schematic",
    place_on = {"default:stone"},
    sidelen = 80,
    fill_ratio = 0.0025,
    biomes = {"lava"},
    y_min = weird_biomes.secondary_min,
    y_max = weird_biomes.max.y,
    schematic = weird_biomes.nc(vector.new(3, 7, 3), {
        {vector.new(-1, -2, -1), o},
        {vector.new(-1, -2, 1), o},
        {vector.new(1, -2, -1), o},
        {vector.new(1, -2, 1), o},

        {vector.new(-1, -1, -1), o},
        {vector.new(-1, -1, 1), o},
        {vector.new(1, -1, -1), o},
        {vector.new(1, -1, 1), o},

        {vector.new(-1, 0, -1), o},
        {vector.new(-1, 0, 1), o},
        {vector.new(1, 0, -1), o},
        {vector.new(1, 0, 1), o},

        {vector.new(-1, 1, -1), o},
        {vector.new(-1, 1, 1), o},
        {vector.new(1, 1, -1), o},
        {vector.new(1, 1, 1), o},

        {vector.new(-1, 2, -1), o},
        {vector.new(-1, 2, 1), o},
        {vector.new(1, 2, -1), o},
        {vector.new(1, 2, 1), o},

        {vector.new(-1, 3, -1), o, 64},
        {vector.new(-1, 3, 1), o, 64},
        {vector.new(1, 3, -1), o, 64},
        {vector.new(1, 3, 1), o, 64},
        {vector.new(0, 3, -1), o, 64},
        {vector.new(0, 3, 1), o, 64},
        {vector.new(-1, 3, 0), o, 64},
        {vector.new(1, 3, 0), o, 64},

        {vector.new(0, 3, 0), l},
    }),
    rotation = "random",
    flags = {place_center_x = true, place_center_y = true, place_center_z = true},
})
