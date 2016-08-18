---------------------------
--
--
--@type LevelManager
local LevelManager = class("LevelManager")

local Level = import("app.data.Level")

function LevelManager:ctor()
    self:initStageData()
    self.patterns = {}
    self.curLevel = 0
end

function LevelManager:initStageData()
    local lvInfo =  helper.getSloterData(Sloters_.level_info)
    if not lvInfo then
        lvInfo = {}
        for lv=1, 9*GAME_SCENE_COUNT do
            lvInfo[lv] = {0,0,0,false}
        end
        --第一关默认开
        lvInfo[1][4] = true
        lvInfo[2][4] = true
        lvInfo[3][4] = true
        lvInfo[4][4] = true
        lvInfo[5][4] = true
        lvInfo[6][4] = true
        lvInfo[7][4] = true
        lvInfo[8][4] = true
        lvInfo[9][4] = true
        helper.saveSloterData(Sloters_.level_info,lvInfo)
    end
end

-------------------------
--关卡获得星，解锁等信息
--
function LevelManager:getStageInfo(level)
    local lvInfo =  helper.getSloterData(Sloters_.level_info)
    return lvInfo[level]
end

function LevelManager:setLevel(level)
    self.curLevel = level
end


function LevelManager:getLevel()
    return self.curLevel
end

function LevelManager:isLevelMode()
    return self.curLevel<=1000
end

-------------------------
--关卡配置信息
--
function LevelManager:getLevelInfo(level)
    return Level.data[level]
end

-------------------------
--关卡星级信息
--
function LevelManager:getLevelStars(level)
    local data =   Level.data[level]
    return {data[4],data[5],data[6]}
end

-------------------------
--关卡获得收集信息
--
function LevelManager:getLevelClot(level)
    local data =   Level.data[level]

    if data[4][4] then
        return  data[4][4],1
    end
    if data[5][4] then
        return  data[5][4],2
    end
    if data[6][4] then
        return data[6][4],3
    end
end

function LevelManager:updateStage(level,stars)
    local lvInfo =  helper.getSloterData(Sloters_.level_info)
    local clot,clotstar = self:getLevelClot(level)
    local newstar
    local newclot
    local newopen
    for v=1, 3 do
        if stars[v] and lvInfo[level][v]== 0 then
            lvInfo[level][v] = 1
            if not newstar then
                newstar = {}
            end
            table.insert(newstar,v)
            if clotstar and clotstar == v then
                if CollectionManager:getCollection(clot) then
                    newclot = clot
                end
            end
        end
    end

    --解锁下一关
    local allstage = 9*GAME_SCENE_COUNT
    local nextLevel = level + 1

    if newstar and nextLevel <= allstage and not lvInfo[nextLevel][4] then
        lvInfo[nextLevel][4] = true
        newopen = true
        helper.saveSloterData(Sloters_.level_info,lvInfo)
        self.patterns[nextLevel]:updatePattern(nextLevel)
    else
        helper.saveSloterData(Sloters_.level_info,lvInfo)
    end

    self.patterns[level]:updatePattern(level)
    
    if newstar then
        --更新界面的星星数量
        AppViews:getView(Layers_.home):updateStars()
        AppViews:getView(Layers_.select):updateStars()
        --是否解锁收藏
        local scene = math.ceil(level/9)
        CollectionManager:starCollect(scene)
    end

    return newstar,newclot,newopen
end

-------------------------
--获取场景收集的总星数
--
function LevelManager:getSceneStar(scene)
    local lvInfo =  helper.getSloterData(Sloters_.level_info)
    local count = 9*GAME_SCENE_COUNT
    local start = 1
    if scene then
        count = 9
        start = scene*9+1
    end
    local stars = 0
    for v = start, count do
        for s=1, 3 do
            stars = stars + lvInfo[v][s]
        end
    end

    return stars
end


return LevelManager