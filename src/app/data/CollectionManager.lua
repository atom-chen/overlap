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
        for v=1, #Collection.data do
        	collections[v] = 0
        end
        helper.saveSloterData(Sloters_.collections,collections)
    end
end

function CollectionManager:getAllCollection()
    return helper.getSloterData(Sloters_.collections)
end

function CollectionManager:isCollectioned(id)
    local data =  helper.getSloterData(Sloters_.collections)
    return data[id] ~= 0
end

function CollectionManager:getCollectionInfo(id)
    return Collection.data[id]
end

function CollectionManager:getCollection(id)
    local data =  helper.getSloterData(Sloters_.collections)
    if data[id] == 0 then
    	data[id] = 1
    	helper.saveSloterData(Sloters_.collections,data)
    	AppViews:getView(Layers_.home):updateCollects()
    	return true
    end
end

function CollectionManager:getCollectionCount()
    local data =  helper.getSloterData(Sloters_.collections)
    local count = 0
    for v=1, #Collection.data do
        count = count + data[v]
    end
    
    return count,#Collection.data
end

return CollectionManager