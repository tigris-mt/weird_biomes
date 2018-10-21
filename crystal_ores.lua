for _,x in ipairs({"caverealms:glow_ore", "caverealms:glow_amethyst_ore", "caverealms:glow_emerald_ore"}) do
    minetest.register_ore({
        ore_type = "scatter",
        ore = x,
        wherein = {"default:stone"},
        clust_scarcity = 8^3,
        clust_size = 4,
        clust_num_ores = 8,
        y_min = weird_biomes.secondary_ore_min,
        y_max = weird_biomes.max.y,
        biomes = {"cold_crystal"},
    })
end

for _,x in ipairs({"caverealms:glow_ruby_ore", "caverealms:glow_emerald_ore"}) do
    minetest.register_ore({
        ore_type = "scatter",
        ore = x,
        wherein = {"default:stone"},
        clust_scarcity = 7^3,
        clust_size = 4,
        clust_num_ores = 8,
        y_min = weird_biomes.secondary_ore_min,
        y_max = weird_biomes.max.y,
        biomes = {"warm_crystal"},
    })
end

minetest.register_ore({
    ore_type = "scatter",
    ore = "caverealms:thin_ice",
    wherein = {"default:stone"},
    clust_scarcity = 3^3,
    clust_size = 1,
    clust_num_ores = 1,
    y_min = 0,
    y_max = 2,
    biomes = {"cold_crystal"},
})
