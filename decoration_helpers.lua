function weird_biomes.nc(size, nodes, yp)
    local ret = {
        size = size,
        data = {},
        yslice_prob = yp or {},
    }
    for i=1,size.x * size.y * size.z do
        table.insert(ret.data, {name = "air", prob = 0})
    end
    for _,n in ipairs(nodes) do
        local pos = vector.add(n[1], vector.floor(vector.divide(size, 2)))
        local name = n[2]
        local prob = n[3] or 255
        local area = VoxelArea:new({MinEdge=vector.new(0, 0, 0), MaxEdge=vector.subtract(size, 1)})
        ret.data[area:indexp(pos)] = {name = name, prob = prob}
    end
    return ret
end
