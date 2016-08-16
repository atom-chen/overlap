---------------------------
--
--
--@type CollectionManager
local CollectionManager = class("CollectionManager")

local Collection = import("app.data.Collection")

function CollectionManager:ctor()

    for v=1, 100 do
        if not Collection.data[v] then
            Collection.data[v] = Collection.data[1]
        end
    end
    self:initCollection()
end

function CollectionManager:initCollection()
    local collections =  helper.getSloterData(Sloters_.collections)
    local collections_show =  helper.getSloterData(Sloters_.collections_show)
    if not collections then
        collections = {}
        collections_show = {}
        for v=1, #Collection.data do
            collections[v] = 0
            collections_show[v] = 0
        end
        helper.saveSloterData(Sloters_.collections,collections)
        helper.saveSloterData(Sloters_.collections_show,collections_show)
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

--展示新收集物品数量
function CollectionManager:getCollectionCount()
    local data =  helper.getSloterData(Sloters_.collections)
    local count = 0
    for v=1, #Collection.data do
        count = count + data[v]
    end

    return count,#Collection.data
end

--展示新收集物品
function CollectionManager:showCollection(id)
    local collections_show =  helper.getSloterData(Sloters_.collections_show)
    if collections_show[id] == 0 then
        local clot = AppViews:addViewByName("app.views.game.CollectionDialog")
        clot:showInfo(id)
        collections_show[id] = 1
        helper.saveSloterData(Sloters_.collections_show,collections_show)
    end
end

function CollectionManager:unlockCollect(id)
    if self:getCollectionInfo(id) then
        self:getCollection(id)
        return id
    end
end

function CollectionManager:starCollect(scene)
    local star = LevelManager:getSceneStar(scene)
    local allstar = LevelManager:getSceneStar()
    if star >=20 then
        local cid
        if scene == 1  then
            cid = 78
        elseif scene == 2  then
            cid = 59
        elseif scene == 3  then
            cid = 80
        elseif scene == 4  then
            cid = 48
        elseif scene == 5  then
            cid = 58
        elseif scene == 6  then
            cid = 70
        end
        self:unlockCollect(cid)
    end

    if allstar >=20 then
        self:unlockCollect(20)
    end
    if allstar >=40 then
        self:unlockCollect(23)
    end
    if allstar >=60 then
        self:unlockCollect(67)
    end
    if allstar >=80 then
        self:unlockCollect(19)
    end
    if allstar >=100 then
        self:unlockCollect(54)
    end
    if allstar >=120 then
        self:unlockCollect(83)
    end
    if allstar >=140 then
        self:unlockCollect(56)
    end
    if allstar >=9*3*GAME_SCENE_COUNT then
        self:unlockCollect(22)
    end
end



function CollectionManager:starEndlessCollect(scene,score)
    if score>=30 then
        if scene == 1 then
            return self:unlockCollect(100)
        elseif scene == 2 then
            return self:unlockCollect(17)
        elseif scene == 3 then
            return self:unlockCollect(60)
        elseif scene == 4 then
            return self:unlockCollect(72)
        elseif scene == 5 then
            return self:unlockCollect(86)
        elseif scene == 6 then
            return self:unlockCollect(92)
        end
    end
end


function CollectionManager:starRandEndlessCollect(scene,score)
    if scene == 1 then
        if score >=20 then
            local clts = {37,53,28,42}
            local clot = clts[math.random(1,#clts)]
            self:unlockCollect(clot)
            return clot
        end
    elseif scene == 2 then
        if score >=18 then
            local clts = {75,45,11,18}
            local clot = clts[math.random(1,#clts)]
            self:unlockCollect(clot)
            return clot
        end
    elseif scene == 3 then
        if score >=16 then
            local clts = {98,12,43,89}
            local clot = clts[math.random(1,#clts)]
            self:unlockCollect(clot)
            return clot
        end
    elseif scene == 4 then
        if score >=14 then
            local clts = {44,66,25,85}
            local clot = clts[math.random(1,#clts)]
            self:unlockCollect(clot)
            return clot
        end
    elseif scene == 5 then
        if score >=12 then
            local clts = {65,39,93,87}
            local clot = clts[math.random(1,#clts)]
            self:unlockCollect(clot)
            return clot
        end
    elseif scene == 6 then
        if score >=10 then
            local clts = {57,59,14,7,84}
            local clot = clts[math.random(1,#clts)]
            self:unlockCollect(clot)
            return clot
        end
    end
end

function CollectionManager:shareToCollect()
    return self:unlockCollect(84)
end
function CollectionManager:rateToCollect()
    return self:unlockCollect(13)
end

--获取解锁条件
function CollectionManager:howUnlock(id)
    local unlock = Collection.data[id]
    if unlock[1] == 1 then
      return  string.format(helper.fromatLO(_("COLT_1")),unlock[2])
    elseif unlock[1] == 2 then
        return string.format(helper.fromatLO(_("COLT_2")),unlock[2])
    elseif unlock[1] == 3 then
        return  string.format(helper.fromatLO(_("COLT_3")),unlock[2])
    elseif unlock[1] == 4 then
        return string.format(helper.fromatLO(_("COLT_4")),unlock[2],unlock[3])
    elseif unlock[1] == 5 then
        return string.format(helper.fromatLO(_("COLT_5")),unlock[2],unlock[3])
    elseif unlock[1] == 5 then
        return string.format(_("COLT_6"))
    end
end

return CollectionManager