
local GamePrepareView = class("GamePrepareView", cc.load("mvc").ViewBase)

GamePrepareView.RESOURCE_FILENAME = "game.game_prepare"

GamePrepareView.LOCALE_LANG_LABEL = {
    Star1             = _("NorScore"),
    Star2             = _("NorScore"),
    Star3             = _("NorScore"),
    Start             = _("Start"),
}

--$$$$$$$$$$$$$$$$ CONFIG $$$$$$$$$$$$$$$$$$$$$
local Level          = import("app.data.Level")
local SkillIcon          = import(".SkillIcon")

--local SkillExplain1View          = import("..skills.SkillExplain1View")

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
    elseif node:getName()=="btn_skill" then
        local function btnCallback(node,eventType)
        --            SkillInfoView:create()
        --            :setSkill(self.levelSkill)
        --            :addTo(self)
        end
        return btnCallback
    end
end




--$$$$$$$$$$$$$$$$ GamePrepareView $$$$$$$$$$$$$$$$$$$$$


function GamePrepareView:startGame()
    local function startCall()
        AppViews:getView(Layers_.mainScene):gameStart(self.gameLevel)
    end
    AppViews:fadeTo(self,Layers_.gameController,{call = startCall})
end

function GamePrepareView:backToSelect()
    AppViews:fadeBack(Layers_.prepare)
end

function GamePrepareView:nextLevel()
    if self.level + 1<=9 then
        self:prepare(self.page,self.level + 1)
        return true
    end
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

    local collection = LevelManager:getLevelClot(level)
    self.collection = collection
end

function GamePrepareView:showSkillExplain(type)
    AppViews:addViewByName(string.format("app.views.skills.SkillExplain%dView",type))
end



function GamePrepareView:prepare(_page,_level)
    self.page   = _page
    self.level  = _level

    local curLevel = (_page-1)*9+_level
    self.gameLevel = curLevel

    self:initLevelData(curLevel)
    --设置当前关卡level
    self.lbl_level:setString(_page.."-".._level)

    --初始化技能
    local sc = 0
    for v=1, 3 do
        local skType = self.levelSkill[v]
        if skType then
            self["icon_skill_"..v]:show()
            self["icon_skill_"..v]:setSkill(skType)
            sc = sc + 1
            --显示技能简结
            self:showSkillExplain(skType)
        else
            self["icon_skill_"..v]:hide()
        end
    end

    if sc == 1 then
        self["icon_skill_1"]:setPositionX(150-35)
    elseif sc == 2 then
        self["icon_skill_1"]:setPositionX(100-35)
        self["icon_skill_2"]:setPositionX(200)
    elseif sc == 3 then
        self["icon_skill_1"]:setPositionX(0-35)
        self["icon_skill_2"]:setPositionX(150-35)
        self["icon_skill_3"]:setPositionX(300-35)
    end

    --初始化星级
    local infos = Level.getStarInfo(curLevel)
    for v=1, 3 do
        self["Star"..v]:setString(infos[v])
    end
    --每个星级的物品
    for v=1, 3 do
        if self["levelStar"..v][4] then
            if CollectionManager:isCollectioned(self.collection) then
                self["iconcolt"..v]:hide()
            else
                self["iconcolt"..v]:show()
            end
        else
            self["iconcolt"..v]:hide()
        end
    end
    --关已经获得的星级
    local gotstars =  LevelManager:getStageInfo(curLevel)
    for v=1, 3 do
        if gotstars[v]~=0 then
            self["gotstar"..v]:setSpriteFrame("sp-result-star.png")
        else
            self["gotstar"..v]:setSpriteFrame("sp-result-star-h.png")
        end
    end

    if self.collection then
        self.gotcolt:show()
        if CollectionManager:isCollectioned(self.collection) then
            self.gotcolt:setSpriteFrame("sp-result-collection.png")
        else
            self.gotcolt:setSpriteFrame("sp-result-collection-h.png")
        end
    else
        self.gotcolt:hide()
    end

    AppViews:getView(Layers_.result):prepare(_page,_level,infos)
end



return GamePrepareView
