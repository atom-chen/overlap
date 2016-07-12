---------------------------
--
--
--@type CollectionManager
local CollectionManager = class("CollectionManager")

local Collection = import("app.data.Collection")

function CollectionManager:ctor()

    for v=1, 100 do
        Collection.data[v] = {"apple",""}
    end

    self:initCollection()
end

function CollectionManager:initCollection()
    local collections =  helper.getSloterData(Sloters_.collections)
    if not collections then
        collections = {}
        print(#Collection.data)
        for v=1, #Collection.data do
        	collections[v] = 0
        end
        helper.saveSloterData(Sloters_.collections,collections)
    end
end

function CollectionManager:getCollection()
    return helper.getSloterData(Sloters_.collections)
end

function CollectionManager:isCollectioned(id)
    local data =  helper.getSloterData(Sloters_.collections)
    return data[id] ~= 0
end

function CollectionManager:getCollectionInfo(id)
    return Collection.data[id]
end

return CollectionManager