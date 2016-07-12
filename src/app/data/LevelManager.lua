---------------------------
--
--
--@type LevelManager
local LevelManager = class("LevelManager")

local Level = import("app.data.Level")

function LevelManager:ctor()
    self:initStageData()
    self.patterns = {}
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

-------------------------
--关卡配置信息
--
function LevelManager:getLevelInfo(level)
    return Level.data[level]
end

-------------------------
--关卡配置信息
--
function LevelManager:getLevelStars(level)
    local data =   Level.data[level]
    return {data[4],data[5],data[6]}
end

function LevelManager:updateStage(level,stars)
    local lvInfo =  helper.getSloterData(Sloters_.level_info)
    local newstar
    for v=1, 3 do
        if stars[v] and lvInfo[level][v] then
            lvInfo[level][v] = 1
            if not newstar then
                newstar = {}
            end
            table.insert(newstar,v)
        end
    end


    --解锁下一关
    local allstage = 9*GAME_SCENE_COUNT
    local nextLevel = level + 1

    if newstar and nextLevel <= allstage and not lvInfo[nextLevel][4] then
        lvInfo[nextLevel][4] = true
        helper.saveSloterData(Sloters_.level_info,lvInfo)
        self.patterns[nextLevel]:updatePattern(nextLevel)
    else
        helper.saveSloterData(Sloters_.level_info,lvInfo)
    end

    self.patterns[level]:updatePattern(level)
    
    return newstar
end

return LevelManager