
local OverlapBackView = class("OverlapBackView", cc.load("mvc").ViewBase)

OverlapBackView.RESOURCE_FILENAME = "olap_ground"
OverlapBackView.SCENE_COLOR = {}
OverlapBackView.SCENE_COLOR[1] = {r = 244, g = 175, b = 168}
OverlapBackView.SCENE_COLOR[2] = {r = 90, g = 171, b = 196}
OverlapBackView.SCENE_COLOR[3] = {r = 213, g = 116, b = 118}
OverlapBackView.SCENE_COLOR[4] = {r = 44, g = 81, b = 115}
OverlapBackView.SCENE_COLOR[5] = {r = 115, g = 171, b = 156}
OverlapBackView.SCENE_COLOR[6] = {r = 229, g = 71, b = 132}

--$$$$$$$$$$$$$$$$ CONFIG $$$$$$$$$$$$$$$$$$$$$


--$$$$$$$$$$$$$$$$ ViewBase $$$$$$$$$$$$$$$$$$$$$


function OverlapBackView:onCreate()
    --    local kitty = sp.SkeletonAnimation:create("planet2.json","planet2.atlas",1)
    --    --    kitty:setSkin("01")
    --    kitty:setSlotsToSetupPose()
    --    kitty:setPosition(display.width/2+176,display.height/2-900)
    ----    kitty:setPosition(display.width/2+10,display.height/2-900)
    --    kitty:addAnimation(0,"animation", true)
    --
    --    self:addChild(kitty)

    self.seceneIndex = 0
    self.scene = self:createScene(0)
end


--$$$$$$$$$$$$$$$$ OverlapBackView $$$$$$$$$$$$$$$$$$$$$

function OverlapBackView:setScene(seceneIndex)
    if  self.seceneIndex ~= seceneIndex then
        self.seceneIndex =  seceneIndex
        local sceneTo= self:createScene(seceneIndex)
        sceneTo:setOpacity(0)
        self.scene:setOpacity(255)

        local oldScene  = self.scene
        self.scene = sceneTo

        local function onComplete()
            oldScene:removeSelf()
        end
        ac.execute(self.scene,ac.ccSeq(ac.ccFadeIn(0.8),ac.ccCall(onComplete)))

    end
end

function OverlapBackView:createScene(seceneIndex)

    local planetid = seceneIndex+2
    if planetid > GAME_SCENE_COUNT then
        planetid = 1
    end

    local panel = ccui.Layout:create()
    panel:ignoreContentAdaptWithSize(false)
    panel:setClippingEnabled(false)
    panel:setBackGroundColorType(1)
    panel:setBackGroundColor(OverlapBackView.SCENE_COLOR[planetid])
    panel:setBackGroundColorOpacity(255)
    panel:setLayoutComponentEnabled(true)
    panel:setName("panel")
    panel:setTag(10)
    panel:setCascadeColorEnabled(true)
    panel:setCascadeOpacityEnabled(true)
    panel:setAnchorPoint(0.5000, 0.5000)
    panel:setPosition(display.center)
    local layout = ccui.LayoutComponent:bindLayoutComponent(panel)
    layout:setPositionPercentXEnabled(true)
    layout:setPositionPercentYEnabled(true)
    layout:setPositionPercentX(0.5000)
    layout:setPositionPercentY(0.5000)
    layout:setPercentWidth(1.3347)
    layout:setPercentHeight(1.0000)
    layout:setSize({width = 1001.0000, height = 1334.0000})
    layout:setLeftMargin(-125.5000)
    layout:setRightMargin(-125.5000)
    self:addChild(panel)

    local back  = display.newSprite(string.format("Resource/atlas/background-%d.png",seceneIndex+1))
                  :move(500.5,667)
                  :addTo(panel)

    local small_planet_dir = math.random(1,3)
    local small_planet_pos = nil
    if small_planet_dir == 1 then
        --上
        small_planet_pos = cc.p(math.random(-200,200),display.height/2 - math.random(-10,10))
    elseif small_planet_dir == 2 then
        --左
        small_planet_pos = cc.p(-50-display.width/2 + math.random(-10,10),display.height/2 -  math.random(200,500))
    elseif small_planet_dir == 3 then
        --右
        small_planet_pos = cc.p(50+display.width/2 + math.random(-10,10),display.height/2 -  math.random(200,500))
    end


    local planet = sp.SkeletonAnimation:create(string.format("Resource/spine/planet%d.json",(seceneIndex+1)),string.format("Resource/spine/planet%d.atlas",(seceneIndex+1)),1)
    planet:setSlotsToSetupPose()
    planet:setPosition(501+176,display.height/2-900)
    planet:addAnimation(0,"animation", true)

    panel:addChild(planet)

    local node = display.newNode():move(500.5,667):addTo(panel)
    display.newSprite(string.format("#fullplanet-%d.png",planetid))
        :move(small_planet_pos)
        :addTo(node)
        
    return panel
end





return OverlapBackView
