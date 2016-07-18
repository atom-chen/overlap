
local OverlapBackView = class("OverlapBackView", cc.load("mvc").ViewBase)

OverlapBackView.RESOURCE_FILENAME = "olap_ground"
OverlapBackView.SCENE_COLOR = {}
OverlapBackView.SCENE_COLOR[1] = {r = 255, g = 216, b = 175}
OverlapBackView.SCENE_COLOR[2] = {r = 115, g = 217, b = 199}
OverlapBackView.SCENE_COLOR[3] = {r = 214, g = 197, b = 118}
OverlapBackView.SCENE_COLOR[4] = {r = 149, g = 218, b = 226}
OverlapBackView.SCENE_COLOR[5] = {r = 196, g = 183, b = 215}
OverlapBackView.SCENE_COLOR[6] = {r = 181, g = 169, b = 161}


OverlapBackView.SCENE_INDEX = {2,3,4,1,6,5}

local OverlapLightView = import(".OverlapLightView")

--$$$$$$$$$$$$$$$$ CONFIG $$$$$$$$$$$$$$$$$$$$$


--$$$$$$$$$$$$$$$$ ViewBase $$$$$$$$$$$$$$$$$$$$$


function OverlapBackView:onCreate()

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

function OverlapBackView:createScene(index)
    local  seceneIndex = OverlapBackView.SCENE_INDEX[index+1] - 1

    local planetid = seceneIndex+1
    
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

    local planet = sp.SkeletonAnimation:create(string.format("Resource/spine/planet%d.json",(seceneIndex+1)),string.format("Resource/spine/planet%d.atlas",(seceneIndex+1)),1)
    planet:setSlotsToSetupPose()
    planet:setPosition(501+176,display.height/2-900)
    planet:addAnimation(0,"animation", true)

    panel:addChild(planet)

    local small_planet_dir = math.random(1,6)
    local small_planet_pos = nil
    local lightrotaty = nil
    if small_planet_dir == 1 then
        --上
        small_planet_pos = cc.p(math.random(-250,-50),display.height/2 - math.random(-10,10))
        
        lightrotaty = math.random(-10,-20)
    elseif small_planet_dir == 2 then
        --上
        small_planet_pos = cc.p(math.random(50,250),display.height/2 - math.random(-10,10))
        lightrotaty = math.random(10,20)
    elseif small_planet_dir == 3 or small_planet_dir == 5 then
        --左
        small_planet_pos = cc.p(-10-display.width/2 + math.random(-10,10),display.height/2 -  math.random(110,260))
         lightrotaty = math.random(-15,-33)
    elseif small_planet_dir == 4  or small_planet_dir == 6 then
        --右
        small_planet_pos = cc.p(10+display.width/2 + math.random(-10,10),display.height/2 -  math.random(110,260))
        lightrotaty = math.random(15,33)
    end

    local node = display.newNode():move(500.5,667):addTo(panel)
    OverlapLightView:create()
        :move(small_planet_pos)
        :rotate(lightrotaty)
        :addTo(node)
        
    display.newSprite(string.format("#fullplanet-%d.png",planetid))
        :move(small_planet_pos)
        :addTo(node)

    return panel
end





return OverlapBackView
