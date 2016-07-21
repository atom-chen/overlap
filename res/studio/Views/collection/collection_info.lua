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

--Create Panel_1
local Panel_1 = ccui.Layout:create()
Panel_1:ignoreContentAdaptWithSize(false)
Panel_1:setClippingEnabled(false)
Panel_1:setBackGroundColorType(1)
Panel_1:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_1:setBackGroundColorOpacity(0)
Panel_1:setTouchEnabled(true);
Panel_1:setLayoutComponentEnabled(true)
Panel_1:setName("Panel_1")
Panel_1:setTag(249)
Panel_1:setCascadeColorEnabled(true)
Panel_1:setCascadeOpacityEnabled(true)
Panel_1:setAnchorPoint(0.5000, 0.5000)
Panel_1:setPosition(375.0000, 667.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_1)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(1.3347)
layout:setPercentHeight(1.0000)
layout:setSize({width = 1001.0000, height = 1334.0000})
layout:setLeftMargin(-125.5000)
layout:setRightMargin(-125.5000)
Layer:addChild(Panel_1)

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
Panel_1_0:setTag(251)
Panel_1_0:setCascadeColorEnabled(true)
Panel_1_0:setCascadeOpacityEnabled(true)
Panel_1_0:setAnchorPoint(0.5000, 0.5000)
Panel_1_0:setPosition(384.9750, 656.9950)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_1_0)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5133)
layout:setPositionPercentY(0.4925)
layout:setPercentWidth(1.3347)
layout:setPercentHeight(1.0000)
layout:setSize({width = 1001.0000, height = 1334.0000})
layout:setLeftMargin(-115.5250)
layout:setRightMargin(-135.4750)
layout:setTopMargin(10.0050)
layout:setBottomMargin(-10.0050)
Layer:addChild(Panel_1_0)

--Create Image_1
local Image_1 = ccui.ImageView:create()
Image_1:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
Image_1:loadTexture("common-dialog.png",1)
Image_1:setScale9Enabled(true)
Image_1:setCapInsets({x = 219, y = 129, width = 226, height = 135})
Image_1:setLayoutComponentEnabled(true)
Image_1:setName("Image_1")
Image_1:setTag(248)
Image_1:setCascadeColorEnabled(true)
Image_1:setCascadeOpacityEnabled(true)
Image_1:setPosition(500.5000, 667.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Image_1)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.6633)
layout:setPercentHeight(0.4280)
layout:setSize({width = 664.0000, height = 571.0000})
layout:setLeftMargin(168.5000)
layout:setRightMargin(168.5000)
layout:setTopMargin(381.5000)
layout:setBottomMargin(381.5000)
Panel_1_0:addChild(Image_1)

--Create btn_ok
local btn_ok = ccui.Button:create()
btn_ok:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_ok:loadTextureNormal("btn-134-87-n.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_ok:loadTexturePressed("btn-146-92-h.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_ok:loadTextureDisabled("btn-146-92-h.png",1)
btn_ok:setTitleFontName("Resource/fonts/OverlapExt.ttf")
btn_ok:setTitleFontSize(48)
btn_ok:setTitleText("OK")
btn_ok:setTitleColor({r = 242, g = 251, b = 254})
btn_ok:setScale9Enabled(true)
btn_ok:setCapInsets({x = 15, y = 11, width = 104, height = 65})
btn_ok:setLayoutComponentEnabled(true)
btn_ok:setName("btn_ok")
btn_ok:setTag(250)
btn_ok:setCascadeColorEnabled(true)
btn_ok:setCascadeOpacityEnabled(true)
btn_ok:setPosition(493.5630, 483.6485)
if callBackProvider~=nil then
      btn_ok:addClickEventListener(callBackProvider("collection_info.lua", btn_ok, "onClick"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(btn_ok)
layout:setPositionPercentX(0.4931)
layout:setPositionPercentY(0.3626)
layout:setPercentWidth(0.1339)
layout:setPercentHeight(0.0652)
layout:setSize({width = 134.0000, height = 87.0000})
layout:setLeftMargin(426.5630)
layout:setRightMargin(440.4370)
layout:setTopMargin(806.8515)
layout:setBottomMargin(440.1485)
Panel_1_0:addChild(btn_ok)

--Create Panel_2
local Panel_2 = ccui.Layout:create()
Panel_2:ignoreContentAdaptWithSize(false)
Panel_2:setClippingEnabled(false)
Panel_2:setBackGroundColorType(1)
Panel_2:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_2:setBackGroundColorOpacity(0)
Panel_2:setTouchEnabled(true);
Panel_2:setLayoutComponentEnabled(true)
Panel_2:setName("Panel_2")
Panel_2:setTag(7)
Panel_2:setCascadeColorEnabled(true)
Panel_2:setCascadeOpacityEnabled(true)
Panel_2:setPosition(359.4297, 667.9669)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_2)
layout:setPositionPercentX(0.3591)
layout:setPositionPercentY(0.5007)
layout:setPercentWidth(0.2997)
layout:setPercentHeight(0.2249)
layout:setSize({width = 300.0000, height = 300.0000})
layout:setLeftMargin(359.4297)
layout:setRightMargin(341.5703)
layout:setTopMargin(366.0331)
layout:setBottomMargin(667.9669)
Panel_1_0:addChild(Panel_2)

--Create Text_1
local Text_1 = ccui.Text:create()
Text_1:ignoreContentAdaptWithSize(true)
Text_1:setTextAreaSize({width = 0, height = 0})
Text_1:setFontName("Resource/fonts/OverlapExt.ttf")
Text_1:setFontSize(36)
Text_1:setString([[totaato]])
Text_1:setLayoutComponentEnabled(true)
Text_1:setName("Text_1")
Text_1:setTag(8)
Text_1:setCascadeColorEnabled(true)
Text_1:setCascadeOpacityEnabled(true)
Text_1:setPosition(136.7781, 217.4560)
Text_1:setTextColor({r = 62, g = 62, b = 62})
layout = ccui.LayoutComponent:bindLayoutComponent(Text_1)
layout:setPositionPercentX(0.4559)
layout:setPositionPercentY(0.7249)
layout:setPercentWidth(0.4333)
layout:setPercentHeight(0.1400)
layout:setSize({width = 130.0000, height = 42.0000})
layout:setLeftMargin(71.7781)
layout:setRightMargin(98.2219)
layout:setTopMargin(61.5440)
layout:setBottomMargin(196.4560)
Panel_2:addChild(Text_1)

--Create Sprite_1
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-home.plist")
local Sprite_1 = cc.Sprite:createWithSpriteFrameName("collection-detail-1.png")
Sprite_1:setName("Sprite_1")
Sprite_1:setTag(6)
Sprite_1:setCascadeColorEnabled(true)
Sprite_1:setCascadeOpacityEnabled(true)
Sprite_1:setPosition(149.4934, 78.5248)
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_1)
layout:setPositionPercentX(0.4983)
layout:setPositionPercentY(0.2617)
layout:setPercentWidth(0.5367)
layout:setPercentHeight(0.5767)
layout:setSize({width = 161.0000, height = 173.0000})
layout:setLeftMargin(68.9934)
layout:setRightMargin(70.0066)
layout:setTopMargin(134.9752)
layout:setBottomMargin(-7.9752)
Sprite_1:setBlendFunc({src = 1, dst = 771})
Panel_2:addChild(Sprite_1)

--Create Text_2
local Text_2 = ccui.Text:create()
Text_2:ignoreContentAdaptWithSize(false)
Text_2:setFontName("Resource/fonts/OverlapExt.ttf")
Text_2:setFontSize(20)
Text_2:setString([[it seems someone left behind,not clean,it smells strange.]])
Text_2:setTextHorizontalAlignment(1)
Text_2:setTextVerticalAlignment(1)
Text_2:setLayoutComponentEnabled(true)
Text_2:setName("Text_2")
Text_2:setTag(10)
Text_2:setCascadeColorEnabled(true)
Text_2:setCascadeOpacityEnabled(true)
Text_2:setPosition(501.9883, 603.9490)
Text_2:setTextColor({r = 62, g = 62, b = 62})
layout = ccui.LayoutComponent:bindLayoutComponent(Text_2)
layout:setPositionPercentX(0.5015)
layout:setPositionPercentY(0.4527)
layout:setPercentWidth(0.4022)
layout:setPercentHeight(0.0473)
layout:setSize({width = 402.6020, height = 63.1227})
layout:setLeftMargin(300.6873)
layout:setRightMargin(297.7107)
layout:setTopMargin(698.4897)
layout:setBottomMargin(572.3876)
Panel_1_0:addChild(Text_2)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(15)
result['animation']:setTimeSpeed(1.0000)

--Create PositionTimeline
local PositionTimeline = ccs.Timeline:create()

localFrame = ccs.PositionFrame:create()
localFrame:setFrameIndex(0)
localFrame:setTween(true)
localFrame:setTweenType(27)
localFrame:setX(384.9750)
localFrame:setY(656.9950)
PositionTimeline:addFrame(localFrame)

localFrame = ccs.PositionFrame:create()
localFrame:setFrameIndex(15)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setX(384.9750)
localFrame:setY(656.9950)
PositionTimeline:addFrame(localFrame)

result['animation']:addTimeline(PositionTimeline)
PositionTimeline:setNode(Panel_1_0)

--Create ScaleTimeline
local ScaleTimeline = ccs.Timeline:create()

localFrame = ccs.ScaleFrame:create()
localFrame:setFrameIndex(0)
localFrame:setTween(true)
localFrame:setTweenType(27)
localFrame:setScaleX(0.2000)
localFrame:setScaleY(0.2000)
ScaleTimeline:addFrame(localFrame)

localFrame = ccs.ScaleFrame:create()
localFrame:setFrameIndex(15)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setScaleX(1.0000)
localFrame:setScaleY(1.0000)
ScaleTimeline:addFrame(localFrame)

result['animation']:addTimeline(ScaleTimeline)
ScaleTimeline:setNode(Panel_1_0)

--Create RotationSkewTimeline
local RotationSkewTimeline = ccs.Timeline:create()

localFrame = ccs.RotationSkewFrame:create()
localFrame:setFrameIndex(0)
localFrame:setTween(true)
localFrame:setTweenType(27)
localFrame:setSkewX(0.0000)
localFrame:setSkewY(0.0000)
RotationSkewTimeline:addFrame(localFrame)

localFrame = ccs.RotationSkewFrame:create()
localFrame:setFrameIndex(15)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setSkewX(0.0000)
localFrame:setSkewY(0.0000)
RotationSkewTimeline:addFrame(localFrame)

result['animation']:addTimeline(RotationSkewTimeline)
RotationSkewTimeline:setNode(Panel_1_0)
--Create Animation List
local enter = {name="enter", startIndex=0, endIndex=20}
result['animation']:addAnimationInfo(enter)

result['root'] = Layer
return result;
end

return Result

