
local GameHUDView = class("GameHUDView", cc.load("mvc").ViewBase)

GameHUDView.RESOURCE_FILENAME = "game.game_hud"
GameHUDView.SKILL_ICON_POS = {}
GameHUDView.SKILL_ICON_POS[1] = {cc.p(150,0)}
GameHUDView.SKILL_ICON_POS[2] = {cc.p(75,0),cc.p(225,0)}
GameHUDView.SKILL_ICON_POS[3] = {cc.p(0,0),cc.p(150,0),cc.p(300,0)}

local SkillIcon          = import("app.views.game.SkillIcon")

function GameHUDView:onCreate()
    for v=1, 3 do
        self["icon_skill_"..v] = SkillIcon:create()
            :move((v-1)*120,0)
            :hide()
            :addTo(self.panel_skill)
    end
end

function GameHUDView:initHUD()
    for v=1, 3 do
        self["icon_skill_"..v]:hide()
        self["star"..v]:hide()
    end
    
    self:updateTime(0)
    self:updateScore(0)
    self:hideSkill()
end


function GameHUDView:getStar(star)
    for v=1, 3 do
        if star[v] then
            self["star"..v]:show()
            self["star"..v]:setScale(1.5)
           ac.execute( self["star"..v],ac.ccScaleTo(0.5,1))
            
        end
    end
end


function GameHUDView:updateSkill(skills)
    local keys =   table.keys(skills)
    if keys[1] == 0 then
        return
    end

    for v=1, 3 do
        if keys[v] then
            self["icon_skill_"..v]:show()
            self["icon_skill_"..v]:fadeIn()
            self["icon_skill_"..v]:move(GameHUDView.SKILL_ICON_POS[#keys][v].x-32,0)
            self["icon_skill_"..v]:setSkill(keys[v])
        else
            self["icon_skill_"..v]:hide()
        end
    end
end

function GameHUDView:hideSkill()
    for v=1, 3 do
        self["icon_skill_"..v]:fadeOut()
--        self["icon_skill_"..v]:hide()
    end
end

function GameHUDView:updateTime(time)
    self.countdown:setString(time.."\"")
end


function GameHUDView:getTime(time,delayTime)
    local delayt
    local tcolor
    if delayTime >0 then
        delayt = "+"..delayTime
        tcolor = {r = 240, g = 85, b = 64}
    else
        delayt = delayTime
        tcolor = {r = 28, g = 208, b = 108}
    end

    local score = ccui.Text:create()
    score:setFontName("Resource/fonts/Overlap.ttf")
    score:setFontSize(120)
    score:setString(delayt)
    score:setTextColor(tcolor)
    score:enableOutline({r = 255, g = 255, b = 255, a = 255}, 3)
    score:setLayoutComponentEnabled(true)
    score:setPosition(display.width/2, display.height-509)
    self:addChild(score)
    
    ac.execute(score,ac.ccSeq(ac.ccDelay(0.3),ac.ccEasing(ac.ccMoveTo(0.5,cc.p(display.width/2-295,display.height-40)),21),ac.ccRemoveSelf()))

    self:updateTime(time)
end


function GameHUDView:updateScore(score)
    helper.seqAniGet(self.score,score,1)
end


function GameHUDView:showPerfect(serial)
    local ttfConfig = {}
    ttfConfig.fontFilePath="Resource/fonts/Overlap.ttf"
    ttfConfig.fontSize = 100

    local label1 = cc.Label:createWithTTF(ttfConfig,"Perfet * "..serial, cc.VERTICAL_TEXT_ALIGNMENT_CENTER)
    label1:setTextColor(cc.c3b(209,7,7))
    label1:enableOutline({r = 255, g = 255, b = 255, a = 255}, 5)
    self:addChild(label1)
    label1:setPosition(display.width/2, display.height-509)
--    label1:setPosition( cc.p(display.width/2, 425) )
    label1:setAnchorPoint( cc.p(0.5, 0.5))
--    ac.execute(label1,ac.ccSeq(ac.ccFadeTo(0.2,255),ac.ccDelay(1),ac.ccFadeTo(0.3,0),ac.ccRemoveSelf()))
    label1:hide()
    
    local function call()
    	label1:show()
    end
    ac.execute(label1,ac.ccSeq(ac.ccDelay(0.5),ac.ccCall(call),ac.ccEasing(cc.Spawn:create(ac.ccMoveBy(0.5,cc.p(0,200)),cc.FadeTo:create(0.5,0)),21),ac.ccRemoveSelf()))
end


function GameHUDView:onClick( path,node,funcName)
    if  node:getName() =="btn_pause" then
        local function btnCallback(  node,eventType  )
            audio.playSound(GAME_EFFECT[13])
            AppViews:getView(Layers_.gameController):gamePause()

        end
        return btnCallback

    end
end

function GameHUDView:startREC()
    self.slider:stopActionByTag(111)
    self.slider:setSpriteFrame("top-splider-2.png")
    local action = cc.RepeatForever:create(ac.ccSeq(ac.ccFadeTo(0.5,0),ac.ccFadeTo(0.5,255)))
    action:setTag(111)
    ac.execute(self.slider,action)
end


function GameHUDView:stopREC()
    self.slider:stopActionByTag(111)
    self.slider:setOpacity(255)
    self.slider:setSpriteFrame("top-splider-1.png")
end


function GameHUDView:highTip()
    local x = self["Panel_1"]:getPositionX()
    ac.stopTarget(self["Panel_1"])
    self["Panel_1"]:runAction(ac.ccMoveTo(0.5,cc.p(x,400)))
end

function GameHUDView:lowTip()
    local x = self["Panel_1"]:getPositionX()
    self["Panel_1"]:runAction(ac.ccMoveTo(0.5,cc.p(x,1.8)))
end





return GameHUDView
