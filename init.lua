weird_biomes = {}

weird_biomes.min = vector.new(-31000, -31000, -31000)
weird_biomes.max = vector.new(31000, 31000, 31000)
weird_biomes.secondary_min = -112
weird_biomes.secondary_ore_min = -112

function weird_biomes.include(p)
    dofile(minetest.get_modpath(minetest.get_current_modname()) .. "/" .. p)
end

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
                minetest.log("warning", "Enabled biome '" .. name .. "' not loaded due to missing dependencies: " .. table.concat(check, ","))
                return false
            end
        end
        weird_biomes.include(name .. ".lua")
    end
    return true
end

--minetest.clear_registered_biomes()

biome("crystal", {"caverealms"})
biome("rocky", {})
biome("lava", {})
