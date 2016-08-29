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

--Create panel
local panel = ccui.Layout:create()
panel:ignoreContentAdaptWithSize(false)
panel:setClippingEnabled(false)
panel:setBackGroundColorType(1)
panel:setBackGroundColor({r = 150, g = 200, b = 255})
panel:setBackGroundColorOpacity(0)
panel:setTouchEnabled(true);
panel:setLayoutComponentEnabled(true)
panel:setName("panel")
panel:setTag(36)
panel:setCascadeColorEnabled(true)
panel:setCascadeOpacityEnabled(true)
panel:setAnchorPoint(0.5000, 0.5000)
panel:setPosition(375.0000, 667.0000)
if callBackProvider~=nil then
      panel:addClickEventListener(callBackProvider("skill_type_7.lua", panel, "onTc"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(panel)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(1.0000)
layout:setSize({width = 750.0000, height = 1334.0000})
Layer:addChild(panel)

--Create b1
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/shape-border.plist")
local b1 = cc.Sprite:createWithSpriteFrameName("l-4.png")
b1:setName("b1")
b1:setTag(37)
b1:setCascadeColorEnabled(true)
b1:setCascadeOpacityEnabled(true)
b1:setPosition(374.6129, 970.1158)
b1:setRotationSkewX(180.0000)
b1:setRotationSkewY(180.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(b1)
layout:setPositionPercentX(0.4995)
layout:setPositionPercentY(0.7272)
layout:setPercentWidth(0.6747)
layout:setPercentHeight(0.3793)
layout:setSize({width = 506.0000, height = 506.0000})
layout:setLeftMargin(121.6129)
layout:setRightMargin(122.3871)
layout:setTopMargin(110.8843)
layout:setBottomMargin(717.1158)
b1:setFlippedX(true)
b1:setBlendFunc({src = 1, dst = 771})
panel:addChild(b1)

--Create b2
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/shape-border.plist")
local b2 = cc.Sprite:createWithSpriteFrameName("l-3.png")
b2:setName("b2")
b2:setTag(38)
b2:setCascadeColorEnabled(true)
b2:setCascadeOpacityEnabled(true)
b2:setPosition(376.4000, 1072.4340)
b2:setRotationSkewX(90.0000)
b2:setRotationSkewY(90.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(b2)
layout:setPositionPercentX(0.5019)
layout:setPositionPercentY(0.8039)
layout:setPercentWidth(0.3987)
layout:setPercentHeight(0.3786)
layout:setSize({width = 299.0000, height = 505.0000})
layout:setLeftMargin(226.9000)
layout:setRightMargin(224.1000)
layout:setTopMargin(9.0663)
layout:setBottomMargin(819.9337)
b2:setBlendFunc({src = 1, dst = 771})
panel:addChild(b2)

--Create b3
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/shape-border.plist")
local b3 = cc.Sprite:createWithSpriteFrameName("l-2.png")
b3:setName("b3")
b3:setTag(39)
b3:setCascadeColorEnabled(true)
b3:setCascadeOpacityEnabled(true)
b3:setPosition(478.0880, 1073.8120)
layout = ccui.LayoutComponent:bindLayoutComponent(b3)
layout:setPositionPercentX(0.6375)
layout:setPositionPercentY(0.8050)
layout:setPercentWidth(0.3987)
layout:setPercentHeight(0.2249)
layout:setSize({width = 299.0000, height = 300.0000})
layout:setLeftMargin(328.5880)
layout:setRightMargin(122.4120)
layout:setTopMargin(110.1879)
layout:setBottomMargin(923.8121)
b3:setBlendFunc({src = 1, dst = 771})
panel:addChild(b3)

--Create e1
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/shape-entity.plist")
local e1 = cc.Sprite:createWithSpriteFrameName("s-4.png")
e1:setName("e1")
e1:setTag(40)
e1:setCascadeColorEnabled(true)
e1:setCascadeOpacityEnabled(true)
e1:setVisible(false)
e1:setPosition(375.5900, 970.0394)
e1:setRotationSkewX(180.0000)
e1:setRotationSkewY(180.0000)
e1:setColor({r = 161, g = 68, b = 68})
layout = ccui.LayoutComponent:bindLayoutComponent(e1)
layout:setPositionPercentX(0.5008)
layout:setPositionPercentY(0.7272)
layout:setPercentWidth(0.6320)
layout:setPercentHeight(0.3553)
layout:setSize({width = 474.0000, height = 474.0000})
layout:setLeftMargin(138.5900)
layout:setRightMargin(137.4100)
layout:setTopMargin(126.9606)
layout:setBottomMargin(733.0394)
e1:setFlippedX(true)
e1:setBlendFunc({src = 1, dst = 771})
panel:addChild(e1)

--Create e2
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/shape-entity.plist")
local e2 = cc.Sprite:createWithSpriteFrameName("s-3.png")
e2:setName("e2")
e2:setTag(41)
e2:setCascadeColorEnabled(true)
e2:setCascadeOpacityEnabled(true)
e2:setAnchorPoint(-0.2919, 1.4451)
e2:setPosition(822.4141, 1284.1480)
e2:setRotationSkewX(90.0000)
e2:setRotationSkewY(90.0000)
e2:setColor({r = 84, g = 114, b = 193})
layout = ccui.LayoutComponent:bindLayoutComponent(e2)
layout:setPositionPercentX(1.0966)
layout:setPositionPercentY(0.9626)
layout:setPercentWidth(0.3560)
layout:setPercentHeight(0.3546)
layout:setSize({width = 267.0000, height = 473.0000})
layout:setLeftMargin(900.3514)
layout:setRightMargin(-417.3514)
layout:setTopMargin(260.3844)
layout:setBottomMargin(600.6155)
e2:setBlendFunc({src = 1, dst = 771})
panel:addChild(e2)

--Create e3
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/shape-entity.plist")
local e3 = cc.Sprite:createWithSpriteFrameName("s-2.png")
e3:setName("e3")
e3:setTag(42)
e3:setCascadeColorEnabled(true)
e3:setCascadeOpacityEnabled(true)
e3:setPosition(479.5739, 1072.7040)
e3:setColor({r = 65, g = 135, b = 110})
layout = ccui.LayoutComponent:bindLayoutComponent(e3)
layout:setPositionPercentX(0.6394)
layout:setPositionPercentY(0.8041)
layout:setPercentWidth(0.3560)
layout:setPercentHeight(0.2009)
layout:setSize({width = 267.0000, height = 268.0000})
layout:setLeftMargin(346.0739)
layout:setRightMargin(136.9261)
layout:setTopMargin(127.2964)
layout:setBottomMargin(938.7036)
e3:setBlendFunc({src = 1, dst = 771})
panel:addChild(e3)

--Create back
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local back = cc.Sprite:createWithSpriteFrameName("skill-teach-opt-cell.png")
back:setName("back")
back:setTag(43)
back:setCascadeColorEnabled(true)
back:setCascadeOpacityEnabled(true)
back:setPosition(377.2202, 477.0433)
layout = ccui.LayoutComponent:bindLayoutComponent(back)
layout:setPositionPercentX(0.5030)
layout:setPositionPercentY(0.3576)
layout:setPercentWidth(0.6067)
layout:setPercentHeight(0.0862)
layout:setSize({width = 455.0000, height = 115.0000})
layout:setLeftMargin(149.7202)
layout:setRightMargin(145.2798)
layout:setTopMargin(799.4567)
layout:setBottomMargin(419.5433)
back:setBlendFunc({src = 1, dst = 771})
panel:addChild(back)

--Create s2
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/shape-entity.plist")
local s2 = cc.Sprite:createWithSpriteFrameName("s-3.png")
s2:setName("s2")
s2:setTag(44)
s2:setCascadeColorEnabled(true)
s2:setCascadeOpacityEnabled(true)
s2:setPosition(222.0798, 502.4319)
s2:setScaleX(0.2500)
s2:setScaleY(0.2500)
s2:setRotationSkewX(90.0000)
s2:setRotationSkewY(90.0000)
s2:setColor({r = 84, g = 114, b = 193})
layout = ccui.LayoutComponent:bindLayoutComponent(s2)
layout:setPositionPercentX(0.2961)
layout:setPositionPercentY(0.3766)
layout:setPercentWidth(0.3560)
layout:setPercentHeight(0.3546)
layout:setSize({width = 267.0000, height = 473.0000})
layout:setLeftMargin(88.5798)
layout:setRightMargin(394.4202)
layout:setTopMargin(595.0681)
layout:setBottomMargin(265.9319)
s2:setBlendFunc({src = 1, dst = 771})
panel:addChild(s2)

--Create Sprite_5
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/shape-shadow.plist")
local Sprite_5 = cc.Sprite:createWithSpriteFrameName("d-3.png")
Sprite_5:setName("Sprite_5")
Sprite_5:setTag(45)
Sprite_5:setCascadeColorEnabled(true)
Sprite_5:setCascadeOpacityEnabled(true)
Sprite_5:setPosition(133.5000, 236.5000)
Sprite_5:setColor({r = 0, g = 0, b = 0})
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_5)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(1.0300)
layout:setPercentHeight(1.0169)
layout:setSize({width = 275.0000, height = 481.0000})
layout:setLeftMargin(-4.0000)
layout:setRightMargin(-4.0000)
layout:setTopMargin(-4.0000)
layout:setBottomMargin(-4.0000)
Sprite_5:setBlendFunc({src = 1, dst = 771})
s2:addChild(Sprite_5)

--Create s1
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/shape-entity.plist")
local s1 = cc.Sprite:createWithSpriteFrameName("s-4.png")
s1:setName("s1")
s1:setTag(46)
s1:setCascadeColorEnabled(true)
s1:setCascadeOpacityEnabled(true)
s1:setPosition(382.3303, 477.9458)
s1:setScaleX(0.3000)
s1:setScaleY(0.3000)
s1:setRotationSkewX(180.0000)
s1:setRotationSkewY(180.0000)
s1:setColor({r = 161, g = 68, b = 68})
layout = ccui.LayoutComponent:bindLayoutComponent(s1)
layout:setPositionPercentX(0.5098)
layout:setPositionPercentY(0.3583)
layout:setPercentWidth(0.6320)
layout:setPercentHeight(0.3553)
layout:setSize({width = 474.0000, height = 474.0000})
layout:setLeftMargin(145.3303)
layout:setRightMargin(130.6697)
layout:setTopMargin(619.0542)
layout:setBottomMargin(240.9458)
s1:setFlippedX(true)
s1:setBlendFunc({src = 1, dst = 771})
panel:addChild(s1)

--Create Sprite_7
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/shape-shadow.plist")
local Sprite_7 = cc.Sprite:createWithSpriteFrameName("d-4.png")
Sprite_7:setName("Sprite_7")
Sprite_7:setTag(47)
Sprite_7:setCascadeColorEnabled(true)
Sprite_7:setCascadeOpacityEnabled(true)
Sprite_7:setPosition(237.0000, 237.0000)
Sprite_7:setColor({r = 0, g = 0, b = 0})
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_7)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(1.0169)
layout:setPercentHeight(1.0169)
layout:setSize({width = 482.0000, height = 482.0000})
layout:setLeftMargin(-4.0000)
layout:setRightMargin(-4.0000)
layout:setTopMargin(-4.0000)
layout:setBottomMargin(-4.0000)
Sprite_7:setFlippedX(true)
Sprite_7:setBlendFunc({src = 1, dst = 771})
s1:addChild(Sprite_7)

--Create s3
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/shape-entity.plist")
local s3 = cc.Sprite:createWithSpriteFrameName("s-2.png")
s3:setName("s3")
s3:setTag(48)
s3:setCascadeColorEnabled(true)
s3:setCascadeOpacityEnabled(true)
s3:setPosition(552.8969, 500.8871)
s3:setScaleX(0.2500)
s3:setScaleY(0.2500)
s3:setColor({r = 65, g = 135, b = 110})
layout = ccui.LayoutComponent:bindLayoutComponent(s3)
layout:setPositionPercentX(0.7372)
layout:setPositionPercentY(0.3755)
layout:setPercentWidth(0.3560)
layout:setPercentHeight(0.2009)
layout:setSize({width = 267.0000, height = 268.0000})
layout:setLeftMargin(419.3969)
layout:setRightMargin(63.6031)
layout:setTopMargin(699.1129)
layout:setBottomMargin(366.8871)
s3:setBlendFunc({src = 1, dst = 771})
panel:addChild(s3)

--Create Sprite_8
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/shape-shadow.plist")
local Sprite_8 = cc.Sprite:createWithSpriteFrameName("d-2.png")
Sprite_8:setName("Sprite_8")
Sprite_8:setTag(49)
Sprite_8:setCascadeColorEnabled(true)
Sprite_8:setCascadeOpacityEnabled(true)
Sprite_8:setPosition(133.5000, 134.0000)
Sprite_8:setColor({r = 0, g = 0, b = 0})
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_8)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(1.0300)
layout:setPercentHeight(1.0299)
layout:setSize({width = 275.0000, height = 276.0000})
layout:setLeftMargin(-4.0000)
layout:setRightMargin(-4.0000)
layout:setTopMargin(-4.0000)
layout:setBottomMargin(-4.0000)
Sprite_8:setBlendFunc({src = 1, dst = 771})
s3:addChild(Sprite_8)

--Create hand
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local hand = cc.Sprite:createWithSpriteFrameName("teach-hand.png")
hand:setName("hand")
hand:setTag(50)
hand:setCascadeColorEnabled(true)
hand:setCascadeOpacityEnabled(true)
hand:setPosition(404.0834, 382.1776)
layout = ccui.LayoutComponent:bindLayoutComponent(hand)
layout:setPositionPercentX(0.5388)
layout:setPositionPercentY(0.2865)
layout:setPercentWidth(0.1493)
layout:setPercentHeight(0.1199)
layout:setSize({width = 112.0000, height = 160.0000})
layout:setLeftMargin(348.0834)
layout:setRightMargin(289.9166)
layout:setTopMargin(871.8224)
layout:setBottomMargin(302.1776)
hand:setBlendFunc({src = 1, dst = 771})
panel:addChild(hand)

--Create Panel_2
local Panel_2 = ccui.Layout:create()
Panel_2:ignoreContentAdaptWithSize(false)
Panel_2:setClippingEnabled(false)
Panel_2:setBackGroundColorType(1)
Panel_2:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_2:setBackGroundColorOpacity(102)
Panel_2:setTouchEnabled(true);
Panel_2:setLayoutComponentEnabled(true)
Panel_2:setName("Panel_2")
Panel_2:setTag(209)
Panel_2:setCascadeColorEnabled(true)
Panel_2:setCascadeOpacityEnabled(true)
Panel_2:setPosition(375.0000, 145.8033)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_2)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.1093)
layout:setLeftMargin(375.0000)
layout:setRightMargin(375.0000)
layout:setTopMargin(1188.1970)
layout:setBottomMargin(145.8033)
panel:addChild(Panel_2)

--Create sk_icon
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
local sk_icon = cc.Sprite:createWithSpriteFrameName("icon-common-skill-7.png")
sk_icon:setName("sk_icon")
sk_icon:setTag(210)
sk_icon:setCascadeColorEnabled(true)
sk_icon:setCascadeOpacityEnabled(true)
sk_icon:setPosition(0.8389, 57.7269)
sk_icon:setScaleX(0.9000)
sk_icon:setScaleY(0.9000)
layout = ccui.LayoutComponent:bindLayoutComponent(sk_icon)
layout:setSize({width = 71.0000, height = 72.0000})
layout:setLeftMargin(-34.6611)
layout:setRightMargin(-36.3389)
layout:setTopMargin(-93.7269)
layout:setBottomMargin(21.7269)
sk_icon:setBlendFunc({src = 1, dst = 771})
Panel_2:addChild(sk_icon)

--Create LO_SkInfo_2
local LO_SkInfo_2 = ccui.Text:create()
LO_SkInfo_2:ignoreContentAdaptWithSize(false)
LO_SkInfo_2:setFontName("Resource/fonts/OverlapExt.ttf")
LO_SkInfo_2:setFontSize(36)
LO_SkInfo_2:setString([[start]])
LO_SkInfo_2:setTextHorizontalAlignment(1)
LO_SkInfo_2:setTextVerticalAlignment(1)
LO_SkInfo_2:setLayoutComponentEnabled(true)
LO_SkInfo_2:setName("LO_SkInfo_2")
LO_SkInfo_2:setTag(211)
LO_SkInfo_2:setCascadeColorEnabled(true)
LO_SkInfo_2:setCascadeOpacityEnabled(true)
LO_SkInfo_2:setPosition(0.0000, -19.4058)
LO_SkInfo_2:setTextColor({r = 118, g = 115, b = 113})
layout = ccui.LayoutComponent:bindLayoutComponent(LO_SkInfo_2)
layout:setPositionPercentXEnabled(true)
layout:setSize({width = 400.0000, height = 100.0000})
layout:setLeftMargin(-200.0000)
layout:setRightMargin(-200.0000)
layout:setTopMargin(-30.5942)
layout:setBottomMargin(-69.4058)
Panel_2:addChild(LO_SkInfo_2)

--Create LO_SkInfo_1
local LO_SkInfo_1 = ccui.Text:create()
LO_SkInfo_1:ignoreContentAdaptWithSize(false)
LO_SkInfo_1:setFontSize(36)
LO_SkInfo_1:setString([[开始游戏]])
LO_SkInfo_1:setTextHorizontalAlignment(1)
LO_SkInfo_1:setTextVerticalAlignment(1)
LO_SkInfo_1:setLayoutComponentEnabled(true)
LO_SkInfo_1:setName("LO_SkInfo_1")
LO_SkInfo_1:setTag(212)
LO_SkInfo_1:setCascadeColorEnabled(true)
LO_SkInfo_1:setCascadeOpacityEnabled(true)
LO_SkInfo_1:setVisible(false)
LO_SkInfo_1:setPosition(0.0000, -20.7037)
LO_SkInfo_1:setTextColor({r = 118, g = 115, b = 113})
layout = ccui.LayoutComponent:bindLayoutComponent(LO_SkInfo_1)
layout:setPositionPercentXEnabled(true)
layout:setSize({width = 400.0000, height = 100.0000})
layout:setLeftMargin(-200.0000)
layout:setRightMargin(-200.0000)
layout:setTopMargin(-29.2963)
layout:setBottomMargin(-70.7037)
Panel_2:addChild(LO_SkInfo_1)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(80)
result['animation']:setTimeSpeed(1.0000)

--Create PositionTimeline
local PositionTimeline = ccs.Timeline:create()

localFrame = ccs.PositionFrame:create()
localFrame:setFrameIndex(70)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setX(375.5900)
localFrame:setY(970.0394)
PositionTimeline:addFrame(localFrame)

localFrame = ccs.PositionFrame:create()
localFrame:setFrameIndex(80)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setX(375.5900)
localFrame:setY(970.0394)
PositionTimeline:addFrame(localFrame)

result['animation']:addTimeline(PositionTimeline)
PositionTimeline:setNode(e1)

--Create ScaleTimeline
local ScaleTimeline = ccs.Timeline:create()

localFrame = ccs.ScaleFrame:create()
localFrame:setFrameIndex(70)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setScaleX(1.0000)
localFrame:setScaleY(1.0000)
ScaleTimeline:addFrame(localFrame)

localFrame = ccs.ScaleFrame:create()
localFrame:setFrameIndex(80)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setScaleX(1.0000)
localFrame:setScaleY(1.0000)
ScaleTimeline:addFrame(localFrame)

result['animation']:addTimeline(ScaleTimeline)
ScaleTimeline:setNode(e1)

--Create RotationSkewTimeline
local RotationSkewTimeline = ccs.Timeline:create()

localFrame = ccs.RotationSkewFrame:create()
localFrame:setFrameIndex(70)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setSkewX(180.0000)
localFrame:setSkewY(180.0000)
RotationSkewTimeline:addFrame(localFrame)

localFrame = ccs.RotationSkewFrame:create()
localFrame:setFrameIndex(80)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setSkewX(180.0000)
localFrame:setSkewY(180.0000)
RotationSkewTimeline:addFrame(localFrame)

result['animation']:addTimeline(RotationSkewTimeline)
RotationSkewTimeline:setNode(e1)

--Create AlphaTimeline
local AlphaTimeline = ccs.Timeline:create()

localFrame = ccs.AlphaFrame:create()
localFrame:setFrameIndex(70)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setAlpha(255)
AlphaTimeline:addFrame(localFrame)

localFrame = ccs.AlphaFrame:create()
localFrame:setFrameIndex(80)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setAlpha(0)
AlphaTimeline:addFrame(localFrame)

result['animation']:addTimeline(AlphaTimeline)
AlphaTimeline:setNode(e1)

--Create PositionTimeline
local PositionTimeline = ccs.Timeline:create()

localFrame = ccs.PositionFrame:create()
localFrame:setFrameIndex(20)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setX(382.3303)
localFrame:setY(477.9458)
PositionTimeline:addFrame(localFrame)

localFrame = ccs.PositionFrame:create()
localFrame:setFrameIndex(70)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setX(377.1442)
localFrame:setY(975.8585)
PositionTimeline:addFrame(localFrame)

result['animation']:addTimeline(PositionTimeline)
PositionTimeline:setNode(s1)

--Create ScaleTimeline
local ScaleTimeline = ccs.Timeline:create()

localFrame = ccs.ScaleFrame:create()
localFrame:setFrameIndex(0)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setScaleX(0.3000)
localFrame:setScaleY(0.3000)
ScaleTimeline:addFrame(localFrame)

localFrame = ccs.ScaleFrame:create()
localFrame:setFrameIndex(20)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setScaleX(0.3000)
localFrame:setScaleY(0.3000)
ScaleTimeline:addFrame(localFrame)

localFrame = ccs.ScaleFrame:create()
localFrame:setFrameIndex(70)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setScaleX(0.3000)
localFrame:setScaleY(0.3000)
ScaleTimeline:addFrame(localFrame)

result['animation']:addTimeline(ScaleTimeline)
ScaleTimeline:setNode(s1)

--Create RotationSkewTimeline
local RotationSkewTimeline = ccs.Timeline:create()

localFrame = ccs.RotationSkewFrame:create()
localFrame:setFrameIndex(0)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setSkewX(180.0000)
localFrame:setSkewY(180.0000)
RotationSkewTimeline:addFrame(localFrame)

localFrame = ccs.RotationSkewFrame:create()
localFrame:setFrameIndex(20)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setSkewX(180.0000)
localFrame:setSkewY(180.0000)
RotationSkewTimeline:addFrame(localFrame)

localFrame = ccs.RotationSkewFrame:create()
localFrame:setFrameIndex(70)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setSkewX(180.0000)
localFrame:setSkewY(180.0000)
RotationSkewTimeline:addFrame(localFrame)

result['animation']:addTimeline(RotationSkewTimeline)
RotationSkewTimeline:setNode(s1)

--Create AlphaTimeline
local AlphaTimeline = ccs.Timeline:create()

localFrame = ccs.AlphaFrame:create()
localFrame:setFrameIndex(20)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setAlpha(255)
AlphaTimeline:addFrame(localFrame)

localFrame = ccs.AlphaFrame:create()
localFrame:setFrameIndex(70)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setAlpha(0)
AlphaTimeline:addFrame(localFrame)

result['animation']:addTimeline(AlphaTimeline)
AlphaTimeline:setNode(s1)

--Create PositionTimeline
local PositionTimeline = ccs.Timeline:create()

localFrame = ccs.PositionFrame:create()
localFrame:setFrameIndex(10)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setX(404.0834)
localFrame:setY(382.1776)
PositionTimeline:addFrame(localFrame)

localFrame = ccs.PositionFrame:create()
localFrame:setFrameIndex(35)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setX(404.0834)
localFrame:setY(382.1776)
PositionTimeline:addFrame(localFrame)

result['animation']:addTimeline(PositionTimeline)
PositionTimeline:setNode(hand)

--Create ScaleTimeline
local ScaleTimeline = ccs.Timeline:create()

localFrame = ccs.ScaleFrame:create()
localFrame:setFrameIndex(10)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setScaleX(1.0000)
localFrame:setScaleY(1.0000)
ScaleTimeline:addFrame(localFrame)

localFrame = ccs.ScaleFrame:create()
localFrame:setFrameIndex(35)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setScaleX(1.0000)
localFrame:setScaleY(0.9000)
ScaleTimeline:addFrame(localFrame)

result['animation']:addTimeline(ScaleTimeline)
ScaleTimeline:setNode(hand)

--Create RotationSkewTimeline
local RotationSkewTimeline = ccs.Timeline:create()

localFrame = ccs.RotationSkewFrame:create()
localFrame:setFrameIndex(10)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setSkewX(0.0000)
localFrame:setSkewY(0.0000)
RotationSkewTimeline:addFrame(localFrame)

localFrame = ccs.RotationSkewFrame:create()
localFrame:setFrameIndex(35)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setSkewX(0.0000)
localFrame:setSkewY(0.0000)
RotationSkewTimeline:addFrame(localFrame)

result['animation']:addTimeline(RotationSkewTimeline)
RotationSkewTimeline:setNode(hand)

--Create PositionTimeline
local PositionTimeline = ccs.Timeline:create()

localFrame = ccs.PositionFrame:create()
localFrame:setFrameIndex(0)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setX(0.8389)
localFrame:setY(57.7269)
PositionTimeline:addFrame(localFrame)

result['animation']:addTimeline(PositionTimeline)
PositionTimeline:setNode(sk_icon)

--Create PositionTimeline
local PositionTimeline = ccs.Timeline:create()

localFrame = ccs.PositionFrame:create()
localFrame:setFrameIndex(0)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setX(0.0000)
localFrame:setY(-19.4058)
PositionTimeline:addFrame(localFrame)

result['animation']:addTimeline(PositionTimeline)
PositionTimeline:setNode(LO_SkInfo_2)

--Create AnchorPointTimeline
local AnchorPointTimeline = ccs.Timeline:create()

localFrame = ccs.AnchorPointFrame:create()
localFrame:setFrameIndex(0)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setAnchorPoint({x = 0.5, y = 0.5})
AnchorPointTimeline:addFrame(localFrame)

result['animation']:addTimeline(AnchorPointTimeline)
AnchorPointTimeline:setNode(LO_SkInfo_2)

--Create PositionTimeline
local PositionTimeline = ccs.Timeline:create()

localFrame = ccs.PositionFrame:create()
localFrame:setFrameIndex(0)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setX(0.0000)
localFrame:setY(-20.7037)
PositionTimeline:addFrame(localFrame)

result['animation']:addTimeline(PositionTimeline)
PositionTimeline:setNode(LO_SkInfo_1)

--Create AnchorPointTimeline
local AnchorPointTimeline = ccs.Timeline:create()

localFrame = ccs.AnchorPointFrame:create()
localFrame:setFrameIndex(0)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setAnchorPoint({x = 0.5, y = 0.5})
AnchorPointTimeline:addFrame(localFrame)

result['animation']:addTimeline(AnchorPointTimeline)
AnchorPointTimeline:setNode(LO_SkInfo_1)

--Create PositionTimeline
local PositionTimeline = ccs.Timeline:create()

localFrame = ccs.PositionFrame:create()
localFrame:setFrameIndex(0)
localFrame:setTween(true)
localFrame:setTweenType(0)
localFrame:setX(375.0000)
localFrame:setY(145.8033)
PositionTimeline:addFrame(localFrame)

result['animation']:addTimeline(PositionTimeline)
PositionTimeline:setNode(Panel_2)
--Create Animation List
local animation0 = {name="animation0", startIndex=0, endIndex=160}
result['animation']:addAnimationInfo(animation0)

result['root'] = Layer
return result;
end

return Result

