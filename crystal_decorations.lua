local function rcd(node, biomes, fill_ratio)
    local cd_schems = {
        weird_biomes.nc(vector.new(3, 6, 3), {
            {vector.new(0, -2, 0), node},
            {vector.new(0, -1, 0), node},
            {vector.new(0, 0, 0), node},
            {vector.new(0, 1, 0), node},
            {vector.new(0, 2, 0), node},

            {vector.new(1, 1, 0), node},
            {vector.new(1, 1, 1), node},
            {vector.new(-1, 1, 0), node},
            {vector.new(-1, 1, 1), node},
            {vector.new(0, 1, 1), node},
            {vector.new(-1, 1, -1), node},
            {vector.new(0, 1, -1), node},
            {vector.new(1, 1, -1), node},

            {vector.new(1, 2, 0), node},
            {vector.new(1, 2, 1), node},
            {vector.new(-1, 2, 0), node},
            {vector.new(-1, 2, 1), node},
            {vector.new(0, 2, 1), node},
            {vector.new(-1, 2, -1), node},
            {vector.new(0, 2, -1), node},
            {vector.new(1, 2, -1), node},
        }, {
            {ypos = 5, prob = 127},
        }),
        weird_biomes.nc(vector.new(3, 7, 3), {
            {vector.new(0, -2, 0), node},
            {vector.new(0, -1, 0), node},
            {vector.new(0, 0, 0), node},
            {vector.new(0, 1, 0), node},
            {vector.new(0, 2, 0), node},
            {vector.new(0, 3, 0), node},

            {vector.new(1, 1, 0), node},
            {vector.new(1, 1, 1), node},
            {vector.new(-1, 1, 0), node},
            {vector.new(-1, 1, 1), node},
            {vector.new(0, 1, 1), node},
            {vector.new(-1, 1, -1), node},
            {vector.new(0, 1, -1), node},
            {vector.new(1, 1, -1), node},

            {vector.new(1, 2, 0), node},
            {vector.new(1, 2, 1), node},
            {vector.new(-1, 2, 0), node},
            {vector.new(-1, 2, 1), node},
            {vector.new(0, 2, 1), node},
            {vector.new(-1, 2, -1), node},
            {vector.new(0, 2, -1), node},
            {vector.new(1, 2, -1), node},

            {vector.new(1, 3, 0), node},
            {vector.new(1, 3, 1), node},
            {vector.new(-1, 3, 0), node},
            {vector.new(-1, 3, 1), node},
            {vector.new(0, 3, 1), node},
            {vector.new(-1, 3, -1), node},
            {vector.new(0, 3, -1), node},
            {vector.new(1, 3, -1), node},

        }, {
            {ypos = 6, prob = 127},
        }),
        weird_biomes.nc(vector.new(3, 7, 3), {
            {vector.new(0, -2, 0), node},
            {vector.new(1, -2, 0), node},
            {vector.new(1, -2, 1), node},
            {vector.new(-1, -2, 0), node},
            {vector.new(-1, -2, 1), node},
            {vector.new(0, -2, 1), node},
            {vector.new(-1, -2, -1), node},
            {vector.new(0, -2, -1), node},
            {vector.new(1, -2, -1), node},

            {vector.new(0, -1, 0), node},
            {vector.new(1, -1, 0), node},
            {vector.new(1, -1, 1), node},
            {vector.new(-1, -1, 0), node},
            {vector.new(-1, -1, 1), node},
            {vector.new(0, -1, 1), node},
            {vector.new(-1, -1, -1), node},
            {vector.new(0, -1, -1), node},
            {vector.new(1, -1, -1), node},

            {vector.new(0, 0, 0), node},
            {vector.new(0, 1, 0), node},
            {vector.new(0, 2, 0), node},
            {vector.new(0, 3, 0), node, 64},
        }),
        weird_biomes.nc(vector.new(3, 5, 3), {
            {vector.new(0, -1, 0), node},
            {vector.new(1, -1, 0), node},
            {vector.new(1, -1, 1), node},
            {vector.new(-1, -1, 0), node},
            {vector.new(-1, -1, 1), node},
            {vector.new(0, -1, 1), node},
            {vector.new(-1, -1, -1), node},
            {vector.new(0, -1, -1), node},
            {vector.new(1, -1, -1), node},

            {vector.new(0, 0, 0), node},
            {vector.new(0, 1, 0), node},
            {vector.new(0, 2, 0), node},
            {vector.new(0, 3, 0), node, 64},
        }),
    }
    for _,schem in ipairs(cd_schems) do
        minetest.register_decoration({
            deco_type = "schematic",
            place_on = {"default:stone"},
            sidelen = 80,
            fill_ratio = fill_ratio / #cd_schems,
            biomes = biomes,
            y_min = weird_biomes.secondary_min,
            y_max = weird_biomes.max.y,
            schematic = schem,
            rotation = "random",
            flags = {place_center_x = true, place_center_y = false, place_center_z = true},
        })
    end

    minetest.register_decoration({
        deco_type = "simple",
        place_on = {"default:stone"},
        sidelen = 80,
        fill_ratio = 0.0002,
        biomes = biomes,
        y_min = weird_biomes.secondary_min,
        y_max = weird_biomes.max.y,
        decoration = {node},
        height_max = 6,
    })

    minetest.register_decoration({
        deco_type = "simple",
        place_on = {"default:stone"},
        sidelen = 80,
        fill_ratio = 0.0001,
        biomes = biomes,
        y_min = weird_biomes.secondary_min,
        y_max = weird_biomes.max.y,
        decoration = {node},
        height_max = 18,
    })
end

rcd("caverealms:glow_crystal", {"cold_crystal"}, 0.0005)
rcd("caverealms:glow_amethyst", {"cold_crystal"}, 0.0005)
rcd("caverealms:glow_emerald", {"cold_crystal", "warm_crystal"}, 0.0005)
rcd("caverealms:glow_mese", {"warm_crystal"}, 0.0005)
rcd("caverealms:glow_ruby", {"warm_crystal"}, 0.0005)
