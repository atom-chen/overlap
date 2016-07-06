
local GamePrepareView = class("GamePrepareView", cc.load("mvc").ViewBase)

GamePrepareView.RESOURCE_FILENAME = "game.game_prepare"

GamePrepareView.LOCALE_LANG_LABEL = {
    Star1             = _("NorScore"),
    Star2             = _("NorScore"),
    Star3             = _("NorScore"),
}

--$$$$$$$$$$$$$$$$ CONFIG $$$$$$$$$$$$$$$$$$$$$
local Level          = import("app.data.Level")
local SkillIcon          = import(".SkillIcon")

--$$$$$$$$$$$$$$$$ ViewBase $$$$$$$$$$$$$$$$$$$$$


function GamePrepareView:onCreate()
    self:localLanguage()
    for v=1, 3 do
        self["icon_skill_"..v] = SkillIcon:create()
            :move((v-1)*120,0)
            :addTo(self.panel_skill)
    end
end

function GamePrepareView:onClick( path,node,funcName)
    if node:getName()=="btn_back" then
        local function btnCallback(node,eventType)
            self:backToSelect()
        end
        return btnCallback
    elseif node:getName()=="btn_start" then
        local function btnCallback(node,eventType)
            self:startGame()
        end
        return btnCallback
    end
end




--$$$$$$$$$$$$$$$$ GamePrepareView $$$$$$$$$$$$$$$$$$$$$


function GamePrepareView:startGame()
    gameUtils.splashMask(1)
    local function startCall()
        self:hide()
        AppViews:getView(Layers_.mainScene):gameStart(self.gameLevel)
    end
    ac.ccDellayToCall(self,0.5,startCall)
end

function GamePrepareView:backToSelect()
    gameUtils.transFadeOut(Layers_.prepare,Layers_.select)
end


function GamePrepareView:initLevelData(level)
    local function formatSkill(skill)
        local _skArray = {}
        for _, sks in pairs(skill) do
            for _, v in pairs(sks) do
                if v~=0 then
                    _skArray[v] = v
                end
            end
        end
        return table.keys(_skArray)
    end

    local lvdata = Level.data[level]



    self.levelSkill = formatSkill(lvdata[3])
    self.levelStar1 = lvdata[4]
    self.levelStar2 = lvdata[5]
    self.levelStar3 = lvdata[6]
end


function GamePrepareView:prepare(_page,_level)
    local curLevel = (_page-1)*9+_level
    self.gameLevel = curLevel

    self:initLevelData(curLevel)
    --设置当前关卡level
    self.lbl_level:setString(_page.."-".._level)

    --初始化技能
    for v=1, 3 do
        if self.levelSkill[v] then
            self["icon_skill_"..v]:show()
            self["icon_skill_"..v]:setSkill(self.levelSkill[v])
        else
            self["icon_skill_"..v]:hide()
        end
    end

    --初始化星级
    local infos = Level.getStarInfo(curLevel)
    for v=1, 3 do
        self["Star"..v]:setString(infos[v])
    end

    AppViews:getView(Layers_.result):setStarInfo(infos)
end



return GamePrepareView
