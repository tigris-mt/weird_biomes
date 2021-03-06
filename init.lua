weird_biomes = {}

if minetest.get_mapgen_setting("mg_name") == "v6" then
    error("Weird Biomes cannot operate under Mapgen v6. Use a mapgen with biome support.")
end

weird_biomes.min = vector.new(-31000, -31000, -31000)
weird_biomes.max = vector.new(31000, 31000, 31000)
weird_biomes.secondary_min = -112
weird_biomes.secondary_ore_min = -112

function weird_biomes.include(p)
    dofile(minetest.get_modpath(minetest.get_current_modname()) .. "/" .. p)
end

weird_biomes.include("decoration_helpers.lua")

local function biome(name, checks)
    if minetest.settings:get_bool("weird_biomes.biome_" .. name, true) then
        for _,check in ipairs(checks) do
            check = (type(check) == "table") and check or {check}
            local found = false
            for _,mod in ipairs(check) do
                if minetest.get_modpath(mod) then
                    found = true
                    break
                end
            end
            if not found then
                minetest.log("warning", "Enabled biome '" .. name .. "' not loaded due to missing dependency: " .. table.concat(check, " or "))
                return false
            end
        end
        weird_biomes.include(name .. ".lua")
    end
    return true
end

biome("crystal", {"caverealms"})
biome("rocky", {})
biome("lava", {})

biome("cheese", {{"tigris_mobs_animals", "mobs_redo_animals"}})
