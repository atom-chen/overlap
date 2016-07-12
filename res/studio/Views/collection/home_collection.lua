--------------------------------------------------------------
-- This file was automatically generated by Cocos Studio.
-- Do not make changes to this file.
-- All changes will be lost.
--------------------------------------------------------------

local luaExtend = require "LuaExtend"

-- using for layout to decrease count of local variables
local layout = nil
local localLuaFile = nil
local innerCSD = nil
local innerProject = nil
local localFrame = nil

local Result = {}
------------------------------------------------------------
-- function call description
-- create function caller should provide a function to 
-- get a callback function in creating scene process.
-- the returned callback function will be registered to 
-- the callback event of the control.
-- the function provider is as below :
-- Callback callBackProvider(luaFileName, node, callbackName)
-- parameter description:
-- luaFileName  : a string, lua file name
-- node         : a Node, event source
-- callbackName : a string, callback function name
-- the return value is a callback function
------------------------------------------------------------
function Result.create(callBackProvider)

local result={}
setmetatable(result, luaExtend)

--Create Layer
local Layer=cc.Node:create()
Layer:setName("Layer")
layout = ccui.LayoutComponent:bindLayoutComponent(Layer)
layout:setSize({width = 750.0000, height = 1334.0000})

--Create Panel_1_0
local Panel_1_0 = ccui.Layout:create()
Panel_1_0:ignoreContentAdaptWithSize(false)
Panel_1_0:setClippingEnabled(false)
Panel_1_0:setBackGroundColorType(1)
Panel_1_0:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_1_0:setBackGroundColorOpacity(0)
Panel_1_0:setTouchEnabled(true);
Panel_1_0:setLayoutComponentEnabled(true)
Panel_1_0:setName("Panel_1_0")
Panel_1_0:setTag(349)
Panel_1_0:setCascadeColorEnabled(true)
Panel_1_0:setCascadeOpacityEnabled(true)
Panel_1_0:setAnchorPoint(0.5000, 0.5000)
Panel_1_0:setPosition(375.0000, 667.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_1_0)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(1.3347)
layout:setPercentHeight(1.0000)
layout:setSize({width = 1001.0000, height = 1334.0000})
layout:setLeftMargin(-125.5000)
layout:setRightMargin(-125.5000)
Layer:addChild(Panel_1_0)

--Create Panel_1
local Panel_1 = ccui.Layout:create()
Panel_1:ignoreContentAdaptWithSize(false)
Panel_1:setClippingEnabled(false)
Panel_1:setBackGroundColorType(1)
Panel_1:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_1:setBackGroundColorOpacity(0)
Panel_1:setLayoutComponentEnabled(true)
Panel_1:setName("Panel_1")
Panel_1:setTag(53)
Panel_1:setCascadeColorEnabled(true)
Panel_1:setCascadeOpacityEnabled(true)
Panel_1:setAnchorPoint(0.5000, 0.5000)
Panel_1:setPosition(375.0000, 667.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_1)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(1.0000)
layout:setSize({width = 750.0000, height = 1334.0000})
Layer:addChild(Panel_1)

--Create tv
local tv = ccui.Layout:create()
tv:ignoreContentAdaptWithSize(false)
tv:setClippingEnabled(false)
tv:setBackGroundColorType(1)
tv:setBackGroundColor({r = 150, g = 200, b = 255})
tv:setBackGroundColorOpacity(0)
tv:setLayoutComponentEnabled(true)
tv:setName("tv")
tv:setTag(77)
tv:setCascadeColorEnabled(true)
tv:setCascadeOpacityEnabled(true)
tv:setAnchorPoint(0.5000, 0.5000)
tv:setPosition(375.0000, 667.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(tv)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.8387)
layout:setPercentHeight(0.7234)
layout:setSize({width = 629.0000, height = 965.0000})
layout:setLeftMargin(60.5000)
layout:setRightMargin(60.5000)
layout:setTopMargin(184.5000)
layout:setBottomMargin(184.5000)
Panel_1:addChild(tv)

--Create slider
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-home.plist")
local slider = cc.Sprite:createWithSpriteFrameName("slider-collection.png")
slider:setName("slider")
slider:setTag(45)
slider:setCascadeColorEnabled(true)
slider:setCascadeOpacityEnabled(true)
slider:setAnchorPoint(0.0000, 1.0000)
slider:setPosition(621.0000, 965.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(slider)
layout:setPositionPercentX(0.9873)
layout:setPositionPercentY(1.0000)
layout:setPercentWidth(0.0127)
layout:setPercentHeight(0.4518)
layout:setSize({width = 8.0000, height = 436.0000})
layout:setHorizontalEdge(2)
layout:setVerticalEdge(2)
layout:setLeftMargin(621.0000)
layout:setBottomMargin(529.0000)
slider:setBlendFunc({src = 1, dst = 771})
tv:addChild(slider)

--Create Sprite_2
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-home.plist")
local Sprite_2 = cc.Sprite:createWithSpriteFrameName("icon-collection-collects.png")
Sprite_2:setName("Sprite_2")
Sprite_2:setTag(43)
Sprite_2:setCascadeColorEnabled(true)
Sprite_2:setCascadeOpacityEnabled(true)
Sprite_2:setPosition(312.0003, 1249.5880)
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_2)
layout:setPositionPercentX(0.4160)
layout:setPositionPercentY(0.9367)
layout:setPercentWidth(0.0760)
layout:setPercentHeight(0.0435)
layout:setSize({width = 57.0000, height = 58.0000})
layout:setLeftMargin(283.5003)
layout:setRightMargin(409.4997)
layout:setTopMargin(55.4120)
layout:setBottomMargin(1220.5880)
Sprite_2:setBlendFunc({src = 1, dst = 771})
Panel_1:addChild(Sprite_2)

--Create Text_1
local Text_1 = ccui.Text:create()
Text_1:ignoreContentAdaptWithSize(true)
Text_1:setTextAreaSize({width = 0, height = 0})
Text_1:setFontName("Resource/fonts/OverlapExt.ttf")
Text_1:setFontSize(36)
Text_1:setString([[100/100]])
Text_1:setLayoutComponentEnabled(true)
Text_1:setName("Text_1")
Text_1:setTag(44)
Text_1:setCascadeColorEnabled(true)
Text_1:setCascadeOpacityEnabled(true)
Text_1:setAnchorPoint(0.0000, 0.5000)
Text_1:setPosition(358.6288, 1249.1710)
layout = ccui.LayoutComponent:bindLayoutComponent(Text_1)
layout:setPositionPercentX(0.4782)
layout:setPositionPercentY(0.9364)
layout:setPercentWidth(0.1773)
layout:setPercentHeight(0.0315)
layout:setSize({width = 133.0000, height = 42.0000})
layout:setLeftMargin(358.6288)
layout:setRightMargin(258.3712)
layout:setTopMargin(63.8289)
layout:setBottomMargin(1228.1710)
Panel_1:addChild(Text_1)

--Create btn_back
local btn_back = ccui.Button:create()
btn_back:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_back:loadTextureNormal("btn-134-87-n.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_back:loadTexturePressed("btn-129-79-h.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_back:loadTextureDisabled("btn-129-79-h.png",1)
btn_back:setTitleFontSize(14)
btn_back:setTitleColor({r = 65, g = 65, b = 70})
btn_back:setScale9Enabled(true)
btn_back:setCapInsets({x = 15, y = 11, width = 104, height = 65})
btn_back:setLayoutComponentEnabled(true)
btn_back:setName("btn_back")
btn_back:setTag(50)
btn_back:setCascadeColorEnabled(true)
btn_back:setCascadeOpacityEnabled(true)
btn_back:setPosition(81.5000, 113.6212)
if callBackProvider~=nil then
      btn_back:addClickEventListener(callBackProvider("home_collection.lua", btn_back, "onClick"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(btn_back)
layout:setPositionPercentX(0.1087)
layout:setPositionPercentY(0.0852)
layout:setPercentWidth(0.1787)
layout:setPercentHeight(0.0652)
layout:setSize({width = 134.0000, height = 87.0000})
layout:setHorizontalEdge(1)
layout:setLeftMargin(14.5000)
layout:setRightMargin(601.5000)
layout:setTopMargin(1176.8790)
layout:setBottomMargin(70.1212)
Layer:addChild(btn_back)

--Create Sprite_1
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
local Sprite_1 = cc.Sprite:createWithSpriteFrameName("label-btn-common-back.png")
Sprite_1:setName("Sprite_1")
Sprite_1:setTag(51)
Sprite_1:setCascadeColorEnabled(true)
Sprite_1:setCascadeOpacityEnabled(true)
Sprite_1:setPosition(67.0000, 43.5000)
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_1)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.2612)
layout:setPercentHeight(0.4023)
layout:setSize({width = 35.0000, height = 35.0000})
layout:setLeftMargin(49.5000)
layout:setRightMargin(49.5000)
layout:setTopMargin(26.0000)
layout:setBottomMargin(26.0000)
Sprite_1:setBlendFunc({src = 1, dst = 771})
btn_back:addChild(Sprite_1)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Layer
return result;
end

return Result
