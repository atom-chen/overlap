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
Panel_1:setTag(421)
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

--Create Panel_7
local Panel_7 = ccui.Layout:create()
Panel_7:ignoreContentAdaptWithSize(false)
Panel_7:setClippingEnabled(false)
Panel_7:setBackGroundColorType(1)
Panel_7:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_7:setBackGroundColorOpacity(0)
Panel_7:setLayoutComponentEnabled(true)
Panel_7:setName("Panel_7")
Panel_7:setTag(78)
Panel_7:setCascadeColorEnabled(true)
Panel_7:setCascadeOpacityEnabled(true)
Panel_7:setPosition(228.4765, 719.9318)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_7)
layout:setPositionPercentX(0.3046)
layout:setPositionPercentY(0.5397)
layout:setPercentWidth(0.4000)
layout:setPercentHeight(0.0375)
layout:setSize({width = 300.0000, height = 50.0000})
layout:setHorizontalEdge(1)
layout:setVerticalEdge(2)
layout:setLeftMargin(228.4765)
layout:setRightMargin(221.5235)
layout:setTopMargin(564.0682)
layout:setBottomMargin(719.9318)
Layer:addChild(Panel_7)

--Create iconstar1
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local iconstar1 = cc.Sprite:createWithSpriteFrameName("sp-result-star.png")
iconstar1:setName("iconstar1")
iconstar1:setTag(79)
iconstar1:setCascadeColorEnabled(true)
iconstar1:setCascadeOpacityEnabled(true)
iconstar1:setPosition(25.0000, 26.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(iconstar1)
layout:setPositionPercentX(0.0833)
layout:setPositionPercentY(0.5200)
layout:setPercentWidth(0.1167)
layout:setPercentHeight(0.7000)
layout:setSize({width = 35.0000, height = 35.0000})
layout:setLeftMargin(7.5000)
layout:setRightMargin(257.5000)
layout:setTopMargin(6.5000)
layout:setBottomMargin(8.5000)
iconstar1:setBlendFunc({src = 1, dst = 771})
Panel_7:addChild(iconstar1)

--Create iconcolt1
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local iconcolt1 = cc.Sprite:createWithSpriteFrameName("sp-result-collection.png")
iconcolt1:setName("iconcolt1")
iconcolt1:setTag(38)
iconcolt1:setCascadeColorEnabled(true)
iconcolt1:setCascadeOpacityEnabled(true)
iconcolt1:setAnchorPoint(0.3854, 0.5000)
iconcolt1:setPosition(-20.0000, 26.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(iconcolt1)
layout:setPositionPercentX(-0.0667)
layout:setPositionPercentY(0.5200)
layout:setPercentWidth(0.1200)
layout:setPercentHeight(0.7200)
layout:setSize({width = 36.0000, height = 36.0000})
layout:setLeftMargin(-33.8744)
layout:setRightMargin(297.8744)
layout:setTopMargin(6.0000)
layout:setBottomMargin(8.0000)
iconcolt1:setBlendFunc({src = 1, dst = 771})
Panel_7:addChild(iconcolt1)

--Create Panel_star1
local Panel_star1 = ccui.Layout:create()
Panel_star1:ignoreContentAdaptWithSize(false)
Panel_star1:setClippingEnabled(false)
Panel_star1:setBackGroundColorType(1)
Panel_star1:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_star1:setBackGroundColorOpacity(0)
Panel_star1:setTouchEnabled(true);
Panel_star1:setLayoutComponentEnabled(true)
Panel_star1:setName("Panel_star1")
Panel_star1:setTag(139)
Panel_star1:setCascadeColorEnabled(true)
Panel_star1:setCascadeOpacityEnabled(true)
Panel_star1:setPosition(67.5000, 24.7000)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_star1)
layout:setPositionPercentX(0.2250)
layout:setPositionPercentY(0.4940)
layout:setLeftMargin(67.5000)
layout:setRightMargin(232.5000)
layout:setTopMargin(25.3000)
layout:setBottomMargin(24.7000)
Panel_7:addChild(Panel_star1)

--Create LO_Star1_2
local LO_Star1_2 = ccui.Text:create()
LO_Star1_2:ignoreContentAdaptWithSize(true)
LO_Star1_2:setTextAreaSize({width = 0, height = 0})
LO_Star1_2:setFontName("Resource/fonts/Overlap.ttf")
LO_Star1_2:setFontSize(30)
LO_Star1_2:setString([[score 10]])
LO_Star1_2:setLayoutComponentEnabled(true)
LO_Star1_2:setName("LO_Star1_2")
LO_Star1_2:setTag(80)
LO_Star1_2:setCascadeColorEnabled(true)
LO_Star1_2:setCascadeOpacityEnabled(true)
LO_Star1_2:setAnchorPoint(0.0000, 0.5000)
LO_Star1_2:setTextColor({r = 118, g = 115, b = 113})
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Star1_2)
layout:setSize({width = 84.0000, height = 35.0000})
layout:setHorizontalEdge(1)
layout:setRightMargin(-84.0000)
layout:setTopMargin(-17.5000)
layout:setBottomMargin(-17.5000)
Panel_star1:addChild(LO_Star1_2)

--Create LO_Star1_1
local LO_Star1_1 = ccui.Text:create()
LO_Star1_1:ignoreContentAdaptWithSize(true)
LO_Star1_1:setTextAreaSize({width = 0, height = 0})
LO_Star1_1:setFontName("")
LO_Star1_1:setFontSize(30)
LO_Star1_1:setString([[score 10]])
LO_Star1_1:setLayoutComponentEnabled(true)
LO_Star1_1:setName("LO_Star1_1")
LO_Star1_1:setTag(140)
LO_Star1_1:setCascadeColorEnabled(true)
LO_Star1_1:setCascadeOpacityEnabled(true)
LO_Star1_1:setVisible(false)
LO_Star1_1:setAnchorPoint(0.0000, 0.5000)
LO_Star1_1:setTextColor({r = 118, g = 115, b = 113})
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Star1_1)
layout:setSize({width = 116.0000, height = 34.0000})
layout:setHorizontalEdge(1)
layout:setRightMargin(-116.0000)
layout:setTopMargin(-17.0000)
layout:setBottomMargin(-17.0000)
Panel_star1:addChild(LO_Star1_1)

--Create Panel_7_0
local Panel_7_0 = ccui.Layout:create()
Panel_7_0:ignoreContentAdaptWithSize(false)
Panel_7_0:setClippingEnabled(false)
Panel_7_0:setBackGroundColorType(1)
Panel_7_0:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_7_0:setBackGroundColorOpacity(0)
Panel_7_0:setLayoutComponentEnabled(true)
Panel_7_0:setName("Panel_7_0")
Panel_7_0:setTag(81)
Panel_7_0:setCascadeColorEnabled(true)
Panel_7_0:setCascadeOpacityEnabled(true)
Panel_7_0:setPosition(228.4765, 647.2655)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_7_0)
layout:setPositionPercentX(0.3046)
layout:setPositionPercentY(0.4852)
layout:setPercentWidth(0.4000)
layout:setPercentHeight(0.0375)
layout:setSize({width = 300.0000, height = 50.0000})
layout:setHorizontalEdge(1)
layout:setLeftMargin(228.4765)
layout:setRightMargin(221.5235)
layout:setTopMargin(636.7345)
layout:setBottomMargin(647.2655)
Layer:addChild(Panel_7_0)

--Create iconstar2
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local iconstar2 = cc.Sprite:createWithSpriteFrameName("sp-result-star.png")
iconstar2:setName("iconstar2")
iconstar2:setTag(82)
iconstar2:setCascadeColorEnabled(true)
iconstar2:setCascadeOpacityEnabled(true)
iconstar2:setPosition(25.0000, 24.2537)
layout = ccui.LayoutComponent:bindLayoutComponent(iconstar2)
layout:setPositionPercentX(0.0833)
layout:setPositionPercentY(0.4851)
layout:setPercentWidth(0.1167)
layout:setPercentHeight(0.7000)
layout:setSize({width = 35.0000, height = 35.0000})
layout:setLeftMargin(7.5000)
layout:setRightMargin(257.5000)
layout:setTopMargin(8.2463)
layout:setBottomMargin(6.7537)
iconstar2:setBlendFunc({src = 1, dst = 771})
Panel_7_0:addChild(iconstar2)

--Create iconcolt2
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local iconcolt2 = cc.Sprite:createWithSpriteFrameName("sp-result-collection.png")
iconcolt2:setName("iconcolt2")
iconcolt2:setTag(36)
iconcolt2:setCascadeColorEnabled(true)
iconcolt2:setCascadeOpacityEnabled(true)
iconcolt2:setAnchorPoint(0.3854, 0.5000)
iconcolt2:setPosition(-20.0000, 26.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(iconcolt2)
layout:setPositionPercentX(-0.0667)
layout:setPositionPercentY(0.5200)
layout:setPercentWidth(0.1200)
layout:setPercentHeight(0.7200)
layout:setSize({width = 36.0000, height = 36.0000})
layout:setLeftMargin(-33.8744)
layout:setRightMargin(297.8744)
layout:setTopMargin(6.0000)
layout:setBottomMargin(8.0000)
iconcolt2:setBlendFunc({src = 1, dst = 771})
Panel_7_0:addChild(iconcolt2)

--Create Panel_star2
local Panel_star2 = ccui.Layout:create()
Panel_star2:ignoreContentAdaptWithSize(false)
Panel_star2:setClippingEnabled(false)
Panel_star2:setBackGroundColorType(1)
Panel_star2:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_star2:setBackGroundColorOpacity(0)
Panel_star2:setTouchEnabled(true);
Panel_star2:setLayoutComponentEnabled(true)
Panel_star2:setName("Panel_star2")
Panel_star2:setTag(144)
Panel_star2:setCascadeColorEnabled(true)
Panel_star2:setCascadeOpacityEnabled(true)
Panel_star2:setPosition(67.5000, 24.7000)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_star2)
layout:setPositionPercentX(0.2250)
layout:setPositionPercentY(0.4940)
layout:setLeftMargin(67.5000)
layout:setRightMargin(232.5000)
layout:setTopMargin(25.3000)
layout:setBottomMargin(24.7000)
Panel_7_0:addChild(Panel_star2)

--Create LO_Star2_2
local LO_Star2_2 = ccui.Text:create()
LO_Star2_2:ignoreContentAdaptWithSize(true)
LO_Star2_2:setTextAreaSize({width = 0, height = 0})
LO_Star2_2:setFontName("Resource/fonts/Overlap.ttf")
LO_Star2_2:setFontSize(30)
LO_Star2_2:setString([[score 10]])
LO_Star2_2:setLayoutComponentEnabled(true)
LO_Star2_2:setName("LO_Star2_2")
LO_Star2_2:setTag(145)
LO_Star2_2:setCascadeColorEnabled(true)
LO_Star2_2:setCascadeOpacityEnabled(true)
LO_Star2_2:setAnchorPoint(0.0000, 0.5000)
LO_Star2_2:setTextColor({r = 118, g = 115, b = 113})
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Star2_2)
layout:setSize({width = 84.0000, height = 35.0000})
layout:setHorizontalEdge(1)
layout:setRightMargin(-84.0000)
layout:setTopMargin(-17.5000)
layout:setBottomMargin(-17.5000)
Panel_star2:addChild(LO_Star2_2)

--Create LO_Star2_1
local LO_Star2_1 = ccui.Text:create()
LO_Star2_1:ignoreContentAdaptWithSize(true)
LO_Star2_1:setTextAreaSize({width = 0, height = 0})
LO_Star2_1:setFontName("")
LO_Star2_1:setFontSize(30)
LO_Star2_1:setString([[score 10]])
LO_Star2_1:setLayoutComponentEnabled(true)
LO_Star2_1:setName("LO_Star2_1")
LO_Star2_1:setTag(146)
LO_Star2_1:setCascadeColorEnabled(true)
LO_Star2_1:setCascadeOpacityEnabled(true)
LO_Star2_1:setVisible(false)
LO_Star2_1:setAnchorPoint(0.0000, 0.5000)
LO_Star2_1:setTextColor({r = 118, g = 115, b = 113})
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Star2_1)
layout:setSize({width = 116.0000, height = 34.0000})
layout:setHorizontalEdge(1)
layout:setRightMargin(-116.0000)
layout:setTopMargin(-17.0000)
layout:setBottomMargin(-17.0000)
Panel_star2:addChild(LO_Star2_1)

--Create Panel_7_1
local Panel_7_1 = ccui.Layout:create()
Panel_7_1:ignoreContentAdaptWithSize(false)
Panel_7_1:setClippingEnabled(false)
Panel_7_1:setBackGroundColorType(1)
Panel_7_1:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_7_1:setBackGroundColorOpacity(0)
Panel_7_1:setLayoutComponentEnabled(true)
Panel_7_1:setName("Panel_7_1")
Panel_7_1:setTag(84)
Panel_7_1:setCascadeColorEnabled(true)
Panel_7_1:setCascadeOpacityEnabled(true)
Panel_7_1:setPosition(228.9762, 577.7891)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_7_1)
layout:setPositionPercentX(0.3053)
layout:setPositionPercentY(0.4331)
layout:setPercentWidth(0.4000)
layout:setPercentHeight(0.0375)
layout:setSize({width = 300.0000, height = 50.0000})
layout:setHorizontalEdge(1)
layout:setLeftMargin(228.9762)
layout:setRightMargin(221.0238)
layout:setTopMargin(706.2109)
layout:setBottomMargin(577.7891)
Layer:addChild(Panel_7_1)

--Create iconstar3
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local iconstar3 = cc.Sprite:createWithSpriteFrameName("sp-result-star.png")
iconstar3:setName("iconstar3")
iconstar3:setTag(85)
iconstar3:setCascadeColorEnabled(true)
iconstar3:setCascadeOpacityEnabled(true)
iconstar3:setPosition(25.0000, 26.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(iconstar3)
layout:setPositionPercentX(0.0833)
layout:setPositionPercentY(0.5200)
layout:setPercentWidth(0.1167)
layout:setPercentHeight(0.7000)
layout:setSize({width = 35.0000, height = 35.0000})
layout:setLeftMargin(7.5000)
layout:setRightMargin(257.5000)
layout:setTopMargin(6.5000)
layout:setBottomMargin(8.5000)
iconstar3:setBlendFunc({src = 1, dst = 771})
Panel_7_1:addChild(iconstar3)

--Create iconcolt3
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local iconcolt3 = cc.Sprite:createWithSpriteFrameName("sp-result-collection.png")
iconcolt3:setName("iconcolt3")
iconcolt3:setTag(37)
iconcolt3:setCascadeColorEnabled(true)
iconcolt3:setCascadeOpacityEnabled(true)
iconcolt3:setAnchorPoint(0.3854, 0.5000)
iconcolt3:setPosition(-20.0000, 26.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(iconcolt3)
layout:setPositionPercentX(-0.0667)
layout:setPositionPercentY(0.5200)
layout:setPercentWidth(0.1200)
layout:setPercentHeight(0.7200)
layout:setSize({width = 36.0000, height = 36.0000})
layout:setLeftMargin(-33.8744)
layout:setRightMargin(297.8744)
layout:setTopMargin(6.0000)
layout:setBottomMargin(8.0000)
iconcolt3:setBlendFunc({src = 1, dst = 771})
Panel_7_1:addChild(iconcolt3)

--Create Panel_star3
local Panel_star3 = ccui.Layout:create()
Panel_star3:ignoreContentAdaptWithSize(false)
Panel_star3:setClippingEnabled(false)
Panel_star3:setBackGroundColorType(1)
Panel_star3:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_star3:setBackGroundColorOpacity(0)
Panel_star3:setTouchEnabled(true);
Panel_star3:setLayoutComponentEnabled(true)
Panel_star3:setName("Panel_star3")
Panel_star3:setTag(147)
Panel_star3:setCascadeColorEnabled(true)
Panel_star3:setCascadeOpacityEnabled(true)
Panel_star3:setPosition(67.5000, 24.7000)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_star3)
layout:setPositionPercentX(0.2250)
layout:setPositionPercentY(0.4940)
layout:setLeftMargin(67.5000)
layout:setRightMargin(232.5000)
layout:setTopMargin(25.3000)
layout:setBottomMargin(24.7000)
Panel_7_1:addChild(Panel_star3)

--Create LO_Star3_2
local LO_Star3_2 = ccui.Text:create()
LO_Star3_2:ignoreContentAdaptWithSize(true)
LO_Star3_2:setTextAreaSize({width = 0, height = 0})
LO_Star3_2:setFontName("Resource/fonts/Overlap.ttf")
LO_Star3_2:setFontSize(30)
LO_Star3_2:setString([[score 10]])
LO_Star3_2:setLayoutComponentEnabled(true)
LO_Star3_2:setName("LO_Star3_2")
LO_Star3_2:setTag(148)
LO_Star3_2:setCascadeColorEnabled(true)
LO_Star3_2:setCascadeOpacityEnabled(true)
LO_Star3_2:setAnchorPoint(0.0000, 0.5000)
LO_Star3_2:setTextColor({r = 118, g = 115, b = 113})
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Star3_2)
layout:setSize({width = 84.0000, height = 35.0000})
layout:setHorizontalEdge(1)
layout:setRightMargin(-84.0000)
layout:setTopMargin(-17.5000)
layout:setBottomMargin(-17.5000)
Panel_star3:addChild(LO_Star3_2)

--Create LO_Star3_1
local LO_Star3_1 = ccui.Text:create()
LO_Star3_1:ignoreContentAdaptWithSize(true)
LO_Star3_1:setTextAreaSize({width = 0, height = 0})
LO_Star3_1:setFontName("")
LO_Star3_1:setFontSize(30)
LO_Star3_1:setString([[score 10]])
LO_Star3_1:setLayoutComponentEnabled(true)
LO_Star3_1:setName("LO_Star3_1")
LO_Star3_1:setTag(149)
LO_Star3_1:setCascadeColorEnabled(true)
LO_Star3_1:setCascadeOpacityEnabled(true)
LO_Star3_1:setVisible(false)
LO_Star3_1:setAnchorPoint(0.0000, 0.5000)
LO_Star3_1:setTextColor({r = 118, g = 115, b = 113})
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Star3_1)
layout:setSize({width = 116.0000, height = 34.0000})
layout:setHorizontalEdge(1)
layout:setRightMargin(-116.0000)
layout:setTopMargin(-17.0000)
layout:setBottomMargin(-17.0000)
Panel_star3:addChild(LO_Star3_1)

--Create lbl_level
local lbl_level = ccui.Text:create()
lbl_level:ignoreContentAdaptWithSize(true)
lbl_level:setTextAreaSize({width = 0, height = 0})
lbl_level:setFontName("Resource/fonts/OverlapExt.ttf")
lbl_level:setFontSize(72)
lbl_level:setString([[3-1]])
lbl_level:setLayoutComponentEnabled(true)
lbl_level:setName("lbl_level")
lbl_level:setTag(77)
lbl_level:setCascadeColorEnabled(true)
lbl_level:setCascadeOpacityEnabled(true)
lbl_level:setPosition(364.7250, 988.7607)
lbl_level:setScaleX(1.4000)
lbl_level:setScaleY(1.4000)
lbl_level:setTextColor({r = 242, g = 251, b = 254})
layout = ccui.LayoutComponent:bindLayoutComponent(lbl_level)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.4863)
layout:setPositionPercentY(0.7412)
layout:setPercentWidth(0.1613)
layout:setPercentHeight(0.0630)
layout:setSize({width = 121.0000, height = 84.0000})
layout:setLeftMargin(304.2250)
layout:setRightMargin(324.7750)
layout:setTopMargin(303.2393)
layout:setBottomMargin(946.7607)
Layer:addChild(lbl_level)

--Create panel_skill
local panel_skill = ccui.Layout:create()
panel_skill:ignoreContentAdaptWithSize(false)
panel_skill:setClippingEnabled(false)
panel_skill:setBackGroundColorType(1)
panel_skill:setBackGroundColor({r = 150, g = 200, b = 255})
panel_skill:setBackGroundColorOpacity(0)
panel_skill:setLayoutComponentEnabled(true)
panel_skill:setName("panel_skill")
panel_skill:setTag(87)
panel_skill:setCascadeColorEnabled(true)
panel_skill:setCascadeOpacityEnabled(true)
panel_skill:setAnchorPoint(0.5000, 0.5000)
panel_skill:setPosition(378.9043, 494.9332)
layout = ccui.LayoutComponent:bindLayoutComponent(panel_skill)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentX(0.5052)
layout:setPositionPercentY(0.3710)
layout:setPercentWidth(0.4000)
layout:setPercentHeight(0.0600)
layout:setSize({width = 300.0000, height = 80.0000})
layout:setLeftMargin(228.9043)
layout:setRightMargin(221.0957)
layout:setTopMargin(799.0668)
layout:setBottomMargin(454.9332)
Layer:addChild(panel_skill)

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
btn_back:setTag(39)
btn_back:setCascadeColorEnabled(true)
btn_back:setCascadeOpacityEnabled(true)
btn_back:setPosition(81.5000, 89.5000)
if callBackProvider~=nil then
      btn_back:addClickEventListener(callBackProvider("game_prepare.lua", btn_back, "onClick"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(btn_back)
layout:setPositionPercentX(0.1087)
layout:setPositionPercentY(0.0671)
layout:setPercentWidth(0.1787)
layout:setPercentHeight(0.0652)
layout:setSize({width = 134.0000, height = 87.0000})
layout:setHorizontalEdge(1)
layout:setVerticalEdge(1)
layout:setLeftMargin(14.5000)
layout:setRightMargin(601.5000)
layout:setTopMargin(1201.0000)
layout:setBottomMargin(46.0000)
Layer:addChild(btn_back)

--Create Sprite_12
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
local Sprite_12 = cc.Sprite:createWithSpriteFrameName("label-btn-common-back.png")
Sprite_12:setName("Sprite_12")
Sprite_12:setTag(74)
Sprite_12:setCascadeColorEnabled(true)
Sprite_12:setCascadeOpacityEnabled(true)
Sprite_12:setPosition(67.0000, 43.5000)
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_12)
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
Sprite_12:setBlendFunc({src = 1, dst = 771})
btn_back:addChild(Sprite_12)

--Create btn_start
local btn_start = ccui.Button:create()
btn_start:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_start:loadTextureNormal("btn-258-88-n.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_start:loadTexturePressed("btn-252-82-h.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_start:loadTextureDisabled("btn-252-82-h.png",1)
btn_start:setTitleFontSize(14)
btn_start:setTitleColor({r = 65, g = 65, b = 70})
btn_start:setScale9Enabled(true)
btn_start:setCapInsets({x = 15, y = 11, width = 228, height = 66})
btn_start:setLayoutComponentEnabled(true)
btn_start:setName("btn_start")
btn_start:setTag(165)
btn_start:setCascadeColorEnabled(true)
btn_start:setCascadeOpacityEnabled(true)
btn_start:setPosition(375.0000, 297.0000)
if callBackProvider~=nil then
      btn_start:addClickEventListener(callBackProvider("game_prepare.lua", btn_start, "onClick"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(btn_start)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.2226)
layout:setPercentWidth(0.3440)
layout:setPercentHeight(0.0660)
layout:setSize({width = 258.0000, height = 88.0000})
layout:setVerticalEdge(1)
layout:setLeftMargin(246.0000)
layout:setRightMargin(246.0000)
layout:setTopMargin(993.0000)
layout:setBottomMargin(253.0000)
Layer:addChild(btn_start)

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
Panel_2:setTag(149)
Panel_2:setCascadeColorEnabled(true)
Panel_2:setCascadeOpacityEnabled(true)
Panel_2:setPosition(129.0000, 44.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_2)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setLeftMargin(129.0000)
layout:setRightMargin(129.0000)
layout:setTopMargin(44.0000)
layout:setBottomMargin(44.0000)
btn_start:addChild(Panel_2)

--Create LO_Start_2
local LO_Start_2 = ccui.Text:create()
LO_Start_2:ignoreContentAdaptWithSize(true)
LO_Start_2:setTextAreaSize({width = 0, height = 0})
LO_Start_2:setFontName("Resource/fonts/OverlapExt.ttf")
LO_Start_2:setFontSize(36)
LO_Start_2:setString([[start]])
LO_Start_2:setLayoutComponentEnabled(true)
LO_Start_2:setName("LO_Start_2")
LO_Start_2:setTag(166)
LO_Start_2:setCascadeColorEnabled(true)
LO_Start_2:setCascadeOpacityEnabled(true)
LO_Start_2:setTextColor({r = 242, g = 251, b = 254})
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Start_2)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setSize({width = 95.0000, height = 42.0000})
layout:setLeftMargin(-47.5000)
layout:setRightMargin(-47.5000)
layout:setTopMargin(-21.0000)
layout:setBottomMargin(-21.0000)
Panel_2:addChild(LO_Start_2)

--Create LO_Start_1
local LO_Start_1 = ccui.Text:create()
LO_Start_1:ignoreContentAdaptWithSize(true)
LO_Start_1:setTextAreaSize({width = 0, height = 0})
LO_Start_1:setFontSize(36)
LO_Start_1:setString([[开始游戏]])
LO_Start_1:setLayoutComponentEnabled(true)
LO_Start_1:setName("LO_Start_1")
LO_Start_1:setTag(150)
LO_Start_1:setCascadeColorEnabled(true)
LO_Start_1:setCascadeOpacityEnabled(true)
LO_Start_1:setVisible(false)
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Start_1)
layout:setSize({width = 144.0000, height = 42.0000})
layout:setLeftMargin(-72.0000)
layout:setRightMargin(-72.0000)
layout:setTopMargin(-21.0000)
layout:setBottomMargin(-21.0000)
Panel_2:addChild(LO_Start_1)

--Create Panel_3
local Panel_3 = ccui.Layout:create()
Panel_3:ignoreContentAdaptWithSize(false)
Panel_3:setClippingEnabled(false)
Panel_3:setBackGroundColorType(1)
Panel_3:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_3:setBackGroundColorOpacity(0)
Panel_3:setLayoutComponentEnabled(true)
Panel_3:setName("Panel_3")
Panel_3:setTag(126)
Panel_3:setCascadeColorEnabled(true)
Panel_3:setCascadeOpacityEnabled(true)
Panel_3:setPosition(220.0765, 871.2098)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_3)
layout:setPositionPercentX(0.2934)
layout:setPositionPercentY(0.6531)
layout:setPercentWidth(0.4000)
layout:setPercentHeight(0.1499)
layout:setSize({width = 300.0000, height = 200.0000})
layout:setLeftMargin(220.0765)
layout:setRightMargin(229.9235)
layout:setTopMargin(262.7903)
layout:setBottomMargin(871.2098)
Layer:addChild(Panel_3)

--Create gotstar1
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local gotstar1 = cc.Sprite:createWithSpriteFrameName("sp-result-star-h.png")
gotstar1:setName("gotstar1")
gotstar1:setTag(127)
gotstar1:setCascadeColorEnabled(true)
gotstar1:setCascadeOpacityEnabled(true)
gotstar1:setPosition(91.0000, 37.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(gotstar1)
layout:setPositionPercentX(0.3033)
layout:setPositionPercentY(0.1850)
layout:setPercentWidth(0.1167)
layout:setPercentHeight(0.1750)
layout:setSize({width = 35.0000, height = 35.0000})
layout:setLeftMargin(73.5000)
layout:setRightMargin(191.5000)
layout:setTopMargin(145.5000)
layout:setBottomMargin(19.5000)
gotstar1:setBlendFunc({src = 1, dst = 771})
Panel_3:addChild(gotstar1)

--Create gotstar2
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local gotstar2 = cc.Sprite:createWithSpriteFrameName("sp-result-star-h.png")
gotstar2:setName("gotstar2")
gotstar2:setTag(128)
gotstar2:setCascadeColorEnabled(true)
gotstar2:setCascadeOpacityEnabled(true)
gotstar2:setPosition(153.0000, 37.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(gotstar2)
layout:setPositionPercentX(0.5100)
layout:setPositionPercentY(0.1850)
layout:setPercentWidth(0.1167)
layout:setPercentHeight(0.1750)
layout:setSize({width = 35.0000, height = 35.0000})
layout:setLeftMargin(135.5000)
layout:setRightMargin(129.5000)
layout:setTopMargin(145.5000)
layout:setBottomMargin(19.5000)
gotstar2:setBlendFunc({src = 1, dst = 771})
Panel_3:addChild(gotstar2)

--Create gotstar3
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local gotstar3 = cc.Sprite:createWithSpriteFrameName("sp-result-star-h.png")
gotstar3:setName("gotstar3")
gotstar3:setTag(129)
gotstar3:setCascadeColorEnabled(true)
gotstar3:setCascadeOpacityEnabled(true)
gotstar3:setPosition(215.0000, 37.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(gotstar3)
layout:setPositionPercentX(0.7167)
layout:setPositionPercentY(0.1850)
layout:setPercentWidth(0.1167)
layout:setPercentHeight(0.1750)
layout:setSize({width = 35.0000, height = 35.0000})
layout:setLeftMargin(197.5000)
layout:setRightMargin(67.5000)
layout:setTopMargin(145.5000)
layout:setBottomMargin(19.5000)
gotstar3:setBlendFunc({src = 1, dst = 771})
Panel_3:addChild(gotstar3)

--Create gotcolt
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local gotcolt = cc.Sprite:createWithSpriteFrameName("sp-result-collection-h.png")
gotcolt:setName("gotcolt")
gotcolt:setTag(118)
gotcolt:setCascadeColorEnabled(true)
gotcolt:setCascadeOpacityEnabled(true)
gotcolt:setPosition(274.7689, 35.6555)
layout = ccui.LayoutComponent:bindLayoutComponent(gotcolt)
layout:setPositionPercentX(0.9159)
layout:setPositionPercentY(0.1783)
layout:setPercentWidth(0.1467)
layout:setPercentHeight(0.1800)
layout:setSize({width = 44.0000, height = 36.0000})
layout:setLeftMargin(252.7689)
layout:setRightMargin(3.2311)
layout:setTopMargin(146.3445)
layout:setBottomMargin(17.6555)
gotcolt:setBlendFunc({src = 1, dst = 771})
Panel_3:addChild(gotcolt)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Layer
return result;
end

return Result

