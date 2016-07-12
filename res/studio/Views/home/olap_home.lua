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

--Create btn_overlap
local btn_overlap = ccui.Layout:create()
btn_overlap:ignoreContentAdaptWithSize(false)
btn_overlap:setClippingEnabled(false)
btn_overlap:setBackGroundColorType(1)
btn_overlap:setBackGroundColor({r = 150, g = 200, b = 255})
btn_overlap:setBackGroundColorOpacity(0)
btn_overlap:setTouchEnabled(true);
btn_overlap:setLayoutComponentEnabled(true)
btn_overlap:setName("btn_overlap")
btn_overlap:setTag(130)
btn_overlap:setCascadeColorEnabled(true)
btn_overlap:setCascadeOpacityEnabled(true)
btn_overlap:setAnchorPoint(0.5000, 0.5000)
btn_overlap:setPosition(375.0000, 667.0000)
if callBackProvider~=nil then
      btn_overlap:addClickEventListener(callBackProvider("olap_home.lua", btn_overlap, "onClick"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(btn_overlap)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(1.3347)
layout:setPercentHeight(1.0000)
layout:setSize({width = 1001.0000, height = 1334.0000})
layout:setLeftMargin(-125.5000)
layout:setRightMargin(-125.5000)
Layer:addChild(btn_overlap)

--Create lbl_touch
local lbl_touch = ccui.Text:create()
lbl_touch:ignoreContentAdaptWithSize(true)
lbl_touch:setTextAreaSize({width = 0, height = 0})
lbl_touch:setFontName("Resource/fonts/OverlapExt.ttf")
lbl_touch:setFontSize(48)
lbl_touch:setString([[touch start]])
lbl_touch:setLayoutComponentEnabled(true)
lbl_touch:setName("lbl_touch")
lbl_touch:setTag(112)
lbl_touch:setCascadeColorEnabled(true)
lbl_touch:setCascadeOpacityEnabled(true)
lbl_touch:setPosition(164.0000, 492.2118)
lbl_touch:setTextColor({r = 118, g = 115, b = 113})
layout = ccui.LayoutComponent:bindLayoutComponent(lbl_touch)
layout:setPositionPercentX(0.2187)
layout:setPositionPercentY(0.3690)
layout:setPercentWidth(0.3573)
layout:setPercentHeight(0.0420)
layout:setSize({width = 268.0000, height = 56.0000})
layout:setLeftMargin(30.0000)
layout:setRightMargin(452.0000)
layout:setTopMargin(813.7882)
layout:setBottomMargin(464.2118)
Layer:addChild(lbl_touch)

--Create Panel_top
local Panel_top = ccui.Layout:create()
Panel_top:ignoreContentAdaptWithSize(false)
Panel_top:setClippingEnabled(false)
Panel_top:setBackGroundColorType(1)
Panel_top:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_top:setBackGroundColorOpacity(0)
Panel_top:setLayoutComponentEnabled(true)
Panel_top:setName("Panel_top")
Panel_top:setTag(52)
Panel_top:setCascadeColorEnabled(true)
Panel_top:setCascadeOpacityEnabled(true)
Panel_top:setAnchorPoint(0.5000, 1.0000)
Panel_top:setPosition(375.0000, 1334.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_top)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(1.0000)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(0.1499)
layout:setSize({width = 750.0000, height = 200.0000})
layout:setBottomMargin(1134.0000)
Layer:addChild(Panel_top)

--Create btn_more
local btn_more = ccui.Button:create()
btn_more:ignoreContentAdaptWithSize(false)
btn_more:loadTextureNormal("Resource/atlas/alpha.png",0)
btn_more:loadTexturePressed("Resource/atlas/alpha.png",0)
btn_more:loadTextureDisabled("Resource/atlas/alpha.png",0)
btn_more:setTitleFontSize(14)
btn_more:setTitleColor({r = 65, g = 65, b = 70})
btn_more:setScale9Enabled(true)
btn_more:setCapInsets({x = 0, y = 0, width = 1, height = 1})
btn_more:setLayoutComponentEnabled(true)
btn_more:setName("btn_more")
btn_more:setTag(53)
btn_more:setCascadeColorEnabled(true)
btn_more:setCascadeOpacityEnabled(true)
btn_more:setPosition(90.9889, 150.8223)
if callBackProvider~=nil then
      btn_more:addClickEventListener(callBackProvider("olap_home.lua", btn_more, "onClick"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(btn_more)
layout:setPositionPercentX(0.1213)
layout:setPositionPercentY(0.7541)
layout:setPercentWidth(0.1333)
layout:setPercentHeight(0.5000)
layout:setSize({width = 100.0000, height = 100.0000})
layout:setHorizontalEdge(1)
layout:setVerticalEdge(2)
layout:setLeftMargin(40.9889)
layout:setRightMargin(609.0111)
layout:setTopMargin(-0.8223)
layout:setBottomMargin(100.8223)
Panel_top:addChild(btn_more)

--Create Sprite_1
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-home.plist")
local Sprite_1 = cc.Sprite:createWithSpriteFrameName("label-btn-main-more.png")
Sprite_1:setName("Sprite_1")
Sprite_1:setTag(101)
Sprite_1:setCascadeColorEnabled(true)
Sprite_1:setCascadeOpacityEnabled(true)
Sprite_1:setPosition(50.0000, 50.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_1)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.5600)
layout:setPercentHeight(0.1200)
layout:setSize({width = 56.0000, height = 12.0000})
layout:setLeftMargin(22.0000)
layout:setRightMargin(22.0000)
layout:setTopMargin(44.0000)
layout:setBottomMargin(44.0000)
Sprite_1:setBlendFunc({src = 1, dst = 771})
btn_more:addChild(Sprite_1)

--Create btn_photo
local btn_photo = ccui.Button:create()
btn_photo:ignoreContentAdaptWithSize(false)
btn_photo:loadTextureNormal("Resource/atlas/alpha.png",0)
btn_photo:loadTexturePressed("Resource/atlas/alpha.png",0)
btn_photo:loadTextureDisabled("Resource/atlas/alpha.png",0)
btn_photo:setTitleFontSize(14)
btn_photo:setTitleColor({r = 65, g = 65, b = 70})
btn_photo:setScale9Enabled(true)
btn_photo:setCapInsets({x = 0, y = 0, width = 1, height = 1})
btn_photo:setLayoutComponentEnabled(true)
btn_photo:setName("btn_photo")
btn_photo:setTag(102)
btn_photo:setCascadeColorEnabled(true)
btn_photo:setCascadeOpacityEnabled(true)
btn_photo:setPosition(668.1431, 150.5010)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_photo)
layout:setPositionPercentX(0.8909)
layout:setPositionPercentY(0.7525)
layout:setPercentWidth(0.1333)
layout:setPercentHeight(0.5000)
layout:setSize({width = 100.0000, height = 100.0000})
layout:setHorizontalEdge(2)
layout:setVerticalEdge(2)
layout:setLeftMargin(618.1431)
layout:setRightMargin(31.8569)
layout:setTopMargin(-0.5010)
layout:setBottomMargin(100.5010)
Panel_top:addChild(btn_photo)

--Create Sprite_5
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-home.plist")
local Sprite_5 = cc.Sprite:createWithSpriteFrameName("label-btn-main-photo.png")
Sprite_5:setName("Sprite_5")
Sprite_5:setTag(103)
Sprite_5:setCascadeColorEnabled(true)
Sprite_5:setCascadeOpacityEnabled(true)
Sprite_5:setPosition(50.0000, 50.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_5)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.5000)
layout:setPercentHeight(0.4000)
layout:setSize({width = 50.0000, height = 40.0000})
layout:setLeftMargin(25.0000)
layout:setRightMargin(25.0000)
layout:setTopMargin(30.0000)
layout:setBottomMargin(30.0000)
Sprite_5:setBlendFunc({src = 1, dst = 771})
btn_photo:addChild(Sprite_5)

--Create Panel_top_star
local Panel_top_star = ccui.Layout:create()
Panel_top_star:ignoreContentAdaptWithSize(false)
Panel_top_star:setClippingEnabled(false)
Panel_top_star:setBackGroundColorType(1)
Panel_top_star:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_top_star:setBackGroundColorOpacity(0)
Panel_top_star:setLayoutComponentEnabled(true)
Panel_top_star:setName("Panel_top_star")
Panel_top_star:setTag(58)
Panel_top_star:setCascadeColorEnabled(true)
Panel_top_star:setCascadeOpacityEnabled(true)
Panel_top_star:setPosition(205.7406, -0.2101)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_top_star)
layout:setPositionPercentX(0.2743)
layout:setPositionPercentY(-0.0011)
layout:setPercentWidth(0.2000)
layout:setPercentHeight(1.0000)
layout:setSize({width = 150.0000, height = 200.0000})
layout:setLeftMargin(205.7406)
layout:setRightMargin(394.2594)
layout:setTopMargin(0.2101)
layout:setBottomMargin(-0.2101)
Panel_top:addChild(Panel_top_star)

--Create Sprite_4
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-home.plist")
local Sprite_4 = cc.Sprite:createWithSpriteFrameName("icon-main-stars.png")
Sprite_4:setName("Sprite_4")
Sprite_4:setTag(59)
Sprite_4:setCascadeColorEnabled(true)
Sprite_4:setCascadeOpacityEnabled(true)
Sprite_4:setPosition(22.0004, 158.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_4)
layout:setPositionPercentX(0.1467)
layout:setPositionPercentY(0.7900)
layout:setPercentWidth(0.2933)
layout:setPercentHeight(0.2200)
layout:setSize({width = 44.0000, height = 44.0000})
layout:setHorizontalEdge(1)
layout:setVerticalEdge(2)
layout:setLeftMargin(0.0004)
layout:setRightMargin(105.9996)
layout:setTopMargin(20.0000)
layout:setBottomMargin(136.0000)
Sprite_4:setBlendFunc({src = 1, dst = 771})
Panel_top_star:addChild(Sprite_4)

--Create Text_1
local Text_1 = ccui.Text:create()
Text_1:ignoreContentAdaptWithSize(true)
Text_1:setTextAreaSize({width = 0, height = 0})
Text_1:setFontName("Resource/fonts/OverlapExt.ttf")
Text_1:setFontSize(32)
Text_1:setString([[0/200]])
Text_1:setLayoutComponentEnabled(true)
Text_1:setName("Text_1")
Text_1:setTag(60)
Text_1:setCascadeColorEnabled(true)
Text_1:setCascadeOpacityEnabled(true)
Text_1:setAnchorPoint(0.0000, 0.5000)
Text_1:setPosition(42.4721, 155.8090)
Text_1:setTextColor({r = 118, g = 115, b = 113})
layout = ccui.LayoutComponent:bindLayoutComponent(Text_1)
layout:setPositionPercentX(0.2831)
layout:setPositionPercentY(0.7790)
layout:setPercentWidth(0.5600)
layout:setPercentHeight(0.1850)
layout:setSize({width = 84.0000, height = 37.0000})
layout:setLeftMargin(42.4721)
layout:setRightMargin(23.5279)
layout:setTopMargin(25.6910)
layout:setBottomMargin(137.3090)
Panel_top_star:addChild(Text_1)

--Create Panel_top_colect
local Panel_top_colect = ccui.Layout:create()
Panel_top_colect:ignoreContentAdaptWithSize(false)
Panel_top_colect:setClippingEnabled(false)
Panel_top_colect:setBackGroundColorType(1)
Panel_top_colect:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_top_colect:setBackGroundColorOpacity(0)
Panel_top_colect:setLayoutComponentEnabled(true)
Panel_top_colect:setName("Panel_top_colect")
Panel_top_colect:setTag(61)
Panel_top_colect:setCascadeColorEnabled(true)
Panel_top_colect:setCascadeOpacityEnabled(true)
Panel_top_colect:setPosition(375.0000, 0.8475)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_top_colect)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.0042)
layout:setPercentWidth(0.2000)
layout:setPercentHeight(1.0000)
layout:setSize({width = 150.0000, height = 200.0000})
layout:setHorizontalEdge(1)
layout:setLeftMargin(375.0000)
layout:setRightMargin(225.0000)
layout:setTopMargin(-0.8475)
layout:setBottomMargin(0.8475)
Panel_top:addChild(Panel_top_colect)

--Create Sprite_4
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-home.plist")
local Sprite_4 = cc.Sprite:createWithSpriteFrameName("icon-main-collects.png")
Sprite_4:setName("Sprite_4")
Sprite_4:setTag(62)
Sprite_4:setCascadeColorEnabled(true)
Sprite_4:setCascadeOpacityEnabled(true)
Sprite_4:setPosition(23.0004, 157.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_4)
layout:setPositionPercentX(0.1533)
layout:setPositionPercentY(0.7850)
layout:setPercentWidth(0.3067)
layout:setPercentHeight(0.2300)
layout:setSize({width = 46.0000, height = 46.0000})
layout:setHorizontalEdge(1)
layout:setVerticalEdge(2)
layout:setLeftMargin(0.0004)
layout:setRightMargin(103.9996)
layout:setTopMargin(20.0000)
layout:setBottomMargin(134.0000)
Sprite_4:setBlendFunc({src = 1, dst = 771})
Panel_top_colect:addChild(Sprite_4)

--Create Text_1
local Text_1 = ccui.Text:create()
Text_1:ignoreContentAdaptWithSize(true)
Text_1:setTextAreaSize({width = 0, height = 0})
Text_1:setFontName("Resource/fonts/OverlapExt.ttf")
Text_1:setFontSize(32)
Text_1:setString([[0/200]])
Text_1:setLayoutComponentEnabled(true)
Text_1:setName("Text_1")
Text_1:setTag(63)
Text_1:setCascadeColorEnabled(true)
Text_1:setCascadeOpacityEnabled(true)
Text_1:setAnchorPoint(0.0000, 0.5000)
Text_1:setPosition(54.4318, 158.7645)
Text_1:setTextColor({r = 118, g = 115, b = 113})
layout = ccui.LayoutComponent:bindLayoutComponent(Text_1)
layout:setPositionPercentX(0.3629)
layout:setPositionPercentY(0.7938)
layout:setPercentWidth(0.5600)
layout:setPercentHeight(0.1850)
layout:setSize({width = 84.0000, height = 37.0000})
layout:setLeftMargin(54.4318)
layout:setRightMargin(11.5682)
layout:setTopMargin(22.7355)
layout:setBottomMargin(140.2645)
Panel_top_colect:addChild(Text_1)

--Create btn_noads
local btn_noads = ccui.Button:create()
btn_noads:ignoreContentAdaptWithSize(false)
btn_noads:loadTextureNormal("Resource/atlas/alpha.png",0)
btn_noads:loadTexturePressed("Resource/atlas/alpha.png",0)
btn_noads:loadTextureDisabled("Resource/atlas/alpha.png",0)
btn_noads:setTitleFontSize(14)
btn_noads:setTitleColor({r = 65, g = 65, b = 70})
btn_noads:setScale9Enabled(true)
btn_noads:setCapInsets({x = 0, y = 0, width = 1, height = 1})
btn_noads:setLayoutComponentEnabled(true)
btn_noads:setName("btn_noads")
btn_noads:setTag(104)
btn_noads:setCascadeColorEnabled(true)
btn_noads:setCascadeOpacityEnabled(true)
btn_noads:setPosition(73.0557, 50.9854)
if callBackProvider~=nil then
      btn_noads:addClickEventListener(callBackProvider("olap_home.lua", btn_noads, "onClick"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(btn_noads)
layout:setPositionPercentX(0.0974)
layout:setPositionPercentY(0.2549)
layout:setPercentWidth(0.1600)
layout:setPercentHeight(0.6000)
layout:setSize({width = 120.0000, height = 120.0000})
layout:setHorizontalEdge(1)
layout:setVerticalEdge(2)
layout:setLeftMargin(13.0557)
layout:setRightMargin(616.9443)
layout:setTopMargin(89.0146)
layout:setBottomMargin(-9.0146)
Panel_top:addChild(btn_noads)

--Create Sprite_5
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-home.plist")
local Sprite_5 = cc.Sprite:createWithSpriteFrameName("btn-main-noads.png")
Sprite_5:setName("Sprite_5")
Sprite_5:setTag(106)
Sprite_5:setCascadeColorEnabled(true)
Sprite_5:setCascadeOpacityEnabled(true)
Sprite_5:setPosition(60.0000, 60.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_5)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.3833)
layout:setPercentHeight(0.3750)
layout:setSize({width = 46.0000, height = 45.0000})
layout:setLeftMargin(37.0000)
layout:setRightMargin(37.0000)
layout:setTopMargin(37.5000)
layout:setBottomMargin(37.5000)
Sprite_5:setBlendFunc({src = 1, dst = 771})
btn_noads:addChild(Sprite_5)

--Create Panel_3
local Panel_3 = ccui.Layout:create()
Panel_3:ignoreContentAdaptWithSize(false)
Panel_3:setClippingEnabled(false)
Panel_3:setBackGroundColorType(1)
Panel_3:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_3:setBackGroundColorOpacity(0)
Panel_3:setTouchEnabled(true);
Panel_3:setLayoutComponentEnabled(true)
Panel_3:setName("Panel_3")
Panel_3:setTag(120)
Panel_3:setCascadeColorEnabled(true)
Panel_3:setCascadeOpacityEnabled(true)
Panel_3:setPosition(71.7367, 5.5703)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_3)
layout:setPositionPercentX(0.0956)
layout:setPositionPercentY(0.0279)
layout:setPercentWidth(0.0267)
layout:setPercentHeight(0.1000)
layout:setSize({width = 20.0000, height = 20.0000})
layout:setLeftMargin(71.7367)
layout:setRightMargin(658.2633)
layout:setTopMargin(174.4297)
layout:setBottomMargin(5.5703)
Panel_top:addChild(Panel_3)

--Create LO_Donation_2
local LO_Donation_2 = ccui.Text:create()
LO_Donation_2:ignoreContentAdaptWithSize(true)
LO_Donation_2:setTextAreaSize({width = 0, height = 0})
LO_Donation_2:setFontName("Resource/fonts/Overlap.ttf")
LO_Donation_2:setFontSize(36)
LO_Donation_2:setString([[donation]])
LO_Donation_2:setTouchScaleChangeEnabled(true)
LO_Donation_2:setLayoutComponentEnabled(true)
LO_Donation_2:setName("LO_Donation_2")
LO_Donation_2:setTag(65)
LO_Donation_2:setCascadeColorEnabled(true)
LO_Donation_2:setCascadeOpacityEnabled(true)
LO_Donation_2:setScaleX(0.6947)
LO_Donation_2:setScaleY(0.5986)
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Donation_2)
layout:setPercentWidth(5.3000)
layout:setPercentHeight(2.1000)
layout:setSize({width = 106.0000, height = 42.0000})
layout:setLeftMargin(-53.0000)
layout:setRightMargin(-33.0000)
layout:setTopMargin(-1.0000)
layout:setBottomMargin(-21.0000)
Panel_3:addChild(LO_Donation_2)

--Create LO_Donation_1
local LO_Donation_1 = ccui.Text:create()
LO_Donation_1:ignoreContentAdaptWithSize(true)
LO_Donation_1:setTextAreaSize({width = 0, height = 0})
LO_Donation_1:setFontSize(24)
LO_Donation_1:setString([[去广告]])
LO_Donation_1:setLayoutComponentEnabled(true)
LO_Donation_1:setName("LO_Donation_1")
LO_Donation_1:setTag(121)
LO_Donation_1:setCascadeColorEnabled(true)
LO_Donation_1:setCascadeOpacityEnabled(true)
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Donation_1)
layout:setPercentWidth(3.6000)
layout:setPercentHeight(1.4000)
layout:setSize({width = 72.0000, height = 28.0000})
layout:setLeftMargin(-36.0000)
layout:setRightMargin(-16.0000)
layout:setTopMargin(6.0000)
layout:setBottomMargin(-14.0000)
Panel_3:addChild(LO_Donation_1)

--Create Panel_bottom
local Panel_bottom = ccui.Layout:create()
Panel_bottom:ignoreContentAdaptWithSize(false)
Panel_bottom:setClippingEnabled(false)
Panel_bottom:setBackGroundColorType(1)
Panel_bottom:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_bottom:setBackGroundColorOpacity(0)
Panel_bottom:setLayoutComponentEnabled(true)
Panel_bottom:setName("Panel_bottom")
Panel_bottom:setTag(66)
Panel_bottom:setCascadeColorEnabled(true)
Panel_bottom:setCascadeOpacityEnabled(true)
Panel_bottom:setAnchorPoint(0.5000, 0.0000)
Panel_bottom:setPosition(375.0000, 0.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_bottom)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(0.2249)
layout:setSize({width = 750.0000, height = 300.0000})
layout:setTopMargin(1034.0000)
Layer:addChild(Panel_bottom)

--Create btn_config
local btn_config = ccui.Button:create()
btn_config:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_config:loadTextureNormal("btn-258-88-n.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_config:loadTexturePressed("btn-252-82-h.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_config:loadTextureDisabled("btn-252-82-h.png",1)
btn_config:setTitleFontName("")
btn_config:setTitleFontSize(48)
btn_config:setTitleColor({r = 173, g = 216, b = 230})
btn_config:setScale9Enabled(true)
btn_config:setCapInsets({x = 15, y = 11, width = 228, height = 66})
btn_config:setLayoutComponentEnabled(true)
btn_config:setName("btn_config")
btn_config:setTag(67)
btn_config:setCascadeColorEnabled(true)
btn_config:setCascadeOpacityEnabled(true)
btn_config:setPosition(144.1221, 218.4826)
if callBackProvider~=nil then
      btn_config:addClickEventListener(callBackProvider("olap_home.lua", btn_config, "onClick"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(btn_config)
layout:setPositionPercentX(0.1922)
layout:setPositionPercentY(0.7283)
layout:setPercentWidth(0.3440)
layout:setPercentHeight(0.2933)
layout:setSize({width = 258.0000, height = 88.0000})
layout:setHorizontalEdge(1)
layout:setLeftMargin(15.1221)
layout:setRightMargin(476.8779)
layout:setTopMargin(37.5174)
layout:setBottomMargin(174.4826)
Panel_bottom:addChild(btn_config)

--Create Panel_2
local Panel_2 = ccui.Layout:create()
Panel_2:ignoreContentAdaptWithSize(false)
Panel_2:setClippingEnabled(false)
Panel_2:setBackGroundColorType(1)
Panel_2:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_2:setBackGroundColorOpacity(0)
Panel_2:setLayoutComponentEnabled(true)
Panel_2:setName("Panel_2")
Panel_2:setTag(118)
Panel_2:setCascadeColorEnabled(true)
Panel_2:setCascadeOpacityEnabled(true)
Panel_2:setAnchorPoint(0.5000, 0.5000)
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
btn_config:addChild(Panel_2)

--Create LO_Config_1
local LO_Config_1 = ccui.Text:create()
LO_Config_1:ignoreContentAdaptWithSize(true)
LO_Config_1:setTextAreaSize({width = 0, height = 0})
LO_Config_1:setFontSize(36)
LO_Config_1:setString([[配置]])
LO_Config_1:setLayoutComponentEnabled(true)
LO_Config_1:setName("LO_Config_1")
LO_Config_1:setTag(119)
LO_Config_1:setCascadeColorEnabled(true)
LO_Config_1:setCascadeOpacityEnabled(true)
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Config_1)
layout:setSize({width = 72.0000, height = 42.0000})
layout:setLeftMargin(-36.0000)
layout:setRightMargin(-36.0000)
layout:setTopMargin(-21.0000)
layout:setBottomMargin(-21.0000)
Panel_2:addChild(LO_Config_1)

--Create LO_Config_2
local LO_Config_2 = ccui.Text:create()
LO_Config_2:ignoreContentAdaptWithSize(true)
LO_Config_2:setTextAreaSize({width = 0, height = 0})
LO_Config_2:setFontName("Resource/fonts/OverlapExt.ttf")
LO_Config_2:setFontSize(36)
LO_Config_2:setString([[config]])
LO_Config_2:setLayoutComponentEnabled(true)
LO_Config_2:setName("LO_Config_2")
LO_Config_2:setTag(120)
LO_Config_2:setCascadeColorEnabled(true)
LO_Config_2:setCascadeOpacityEnabled(true)
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Config_2)
layout:setSize({width = 99.0000, height = 42.0000})
layout:setLeftMargin(-49.5000)
layout:setRightMargin(-49.5000)
layout:setTopMargin(-21.0000)
layout:setBottomMargin(-21.0000)
Panel_2:addChild(LO_Config_2)

--Create btn_collection
local btn_collection = ccui.Button:create()
btn_collection:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_collection:loadTextureNormal("btn-258-88-n.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_collection:loadTexturePressed("btn-252-82-h.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_collection:loadTextureDisabled("btn-252-82-h.png",1)
btn_collection:setTitleFontName("")
btn_collection:setTitleFontSize(48)
btn_collection:setTitleColor({r = 173, g = 216, b = 230})
btn_collection:setScale9Enabled(true)
btn_collection:setCapInsets({x = 15, y = 11, width = 228, height = 66})
btn_collection:setLayoutComponentEnabled(true)
btn_collection:setName("btn_collection")
btn_collection:setTag(68)
btn_collection:setCascadeColorEnabled(true)
btn_collection:setCascadeOpacityEnabled(true)
btn_collection:setPosition(143.0001, 92.4219)
if callBackProvider~=nil then
      btn_collection:addClickEventListener(callBackProvider("olap_home.lua", btn_collection, "onClick"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(btn_collection)
layout:setPositionPercentX(0.1907)
layout:setPositionPercentY(0.3081)
layout:setPercentWidth(0.3440)
layout:setPercentHeight(0.2933)
layout:setSize({width = 258.0000, height = 88.0000})
layout:setHorizontalEdge(1)
layout:setLeftMargin(14.0001)
layout:setRightMargin(477.9999)
layout:setTopMargin(163.5781)
layout:setBottomMargin(48.4219)
Panel_bottom:addChild(btn_collection)

--Create Panel_2_0
local Panel_2_0 = ccui.Layout:create()
Panel_2_0:ignoreContentAdaptWithSize(false)
Panel_2_0:setClippingEnabled(false)
Panel_2_0:setBackGroundColorType(1)
Panel_2_0:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_2_0:setBackGroundColorOpacity(0)
Panel_2_0:setLayoutComponentEnabled(true)
Panel_2_0:setName("Panel_2_0")
Panel_2_0:setTag(121)
Panel_2_0:setCascadeColorEnabled(true)
Panel_2_0:setCascadeOpacityEnabled(true)
Panel_2_0:setAnchorPoint(0.5000, 0.5000)
Panel_2_0:setPosition(129.0000, 44.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_2_0)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setLeftMargin(129.0000)
layout:setRightMargin(129.0000)
layout:setTopMargin(44.0000)
layout:setBottomMargin(44.0000)
btn_collection:addChild(Panel_2_0)

--Create LO_Conllection_1
local LO_Conllection_1 = ccui.Text:create()
LO_Conllection_1:ignoreContentAdaptWithSize(true)
LO_Conllection_1:setTextAreaSize({width = 0, height = 0})
LO_Conllection_1:setFontSize(36)
LO_Conllection_1:setString([[排行]])
LO_Conllection_1:setLayoutComponentEnabled(true)
LO_Conllection_1:setName("LO_Conllection_1")
LO_Conllection_1:setTag(122)
LO_Conllection_1:setCascadeColorEnabled(true)
LO_Conllection_1:setCascadeOpacityEnabled(true)
LO_Conllection_1:setVisible(false)
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Conllection_1)
layout:setSize({width = 72.0000, height = 42.0000})
layout:setLeftMargin(-36.0000)
layout:setRightMargin(-36.0000)
layout:setTopMargin(-21.0000)
layout:setBottomMargin(-21.0000)
Panel_2_0:addChild(LO_Conllection_1)

--Create LO_Conllection_2
local LO_Conllection_2 = ccui.Text:create()
LO_Conllection_2:ignoreContentAdaptWithSize(true)
LO_Conllection_2:setTextAreaSize({width = 0, height = 0})
LO_Conllection_2:setFontName("Resource/fonts/OverlapExt.ttf")
LO_Conllection_2:setFontSize(36)
LO_Conllection_2:setString([[collection]])
LO_Conllection_2:setLayoutComponentEnabled(true)
LO_Conllection_2:setName("LO_Conllection_2")
LO_Conllection_2:setTag(123)
LO_Conllection_2:setCascadeColorEnabled(true)
LO_Conllection_2:setCascadeOpacityEnabled(true)
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Conllection_2)
layout:setSize({width = 169.0000, height = 42.0000})
layout:setLeftMargin(-84.5000)
layout:setRightMargin(-84.5000)
layout:setTopMargin(-21.0000)
layout:setBottomMargin(-21.0000)
Panel_2_0:addChild(LO_Conllection_2)

--Create btn_rank
local btn_rank = ccui.Button:create()
btn_rank:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_rank:loadTextureNormal("btn-258-88-n.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_rank:loadTexturePressed("btn-252-82-h.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_rank:loadTextureDisabled("btn-252-82-h.png",1)
btn_rank:setTitleFontName("")
btn_rank:setTitleFontSize(48)
btn_rank:setTitleColor({r = 173, g = 216, b = 230})
btn_rank:setScale9Enabled(true)
btn_rank:setCapInsets({x = 15, y = 11, width = 228, height = 66})
btn_rank:setLayoutComponentEnabled(true)
btn_rank:setName("btn_rank")
btn_rank:setTag(69)
btn_rank:setCascadeColorEnabled(true)
btn_rank:setCascadeOpacityEnabled(true)
btn_rank:setPosition(607.5001, 92.4219)
layout = ccui.LayoutComponent:bindLayoutComponent(btn_rank)
layout:setPositionPercentX(0.8100)
layout:setPositionPercentY(0.3081)
layout:setPercentWidth(0.3440)
layout:setPercentHeight(0.2933)
layout:setSize({width = 258.0000, height = 88.0000})
layout:setHorizontalEdge(2)
layout:setLeftMargin(478.5001)
layout:setRightMargin(13.4999)
layout:setTopMargin(163.5781)
layout:setBottomMargin(48.4219)
Panel_bottom:addChild(btn_rank)

--Create Panel_2_0_0
local Panel_2_0_0 = ccui.Layout:create()
Panel_2_0_0:ignoreContentAdaptWithSize(false)
Panel_2_0_0:setClippingEnabled(false)
Panel_2_0_0:setBackGroundColorType(1)
Panel_2_0_0:setBackGroundColor({r = 150, g = 200, b = 255})
Panel_2_0_0:setBackGroundColorOpacity(0)
Panel_2_0_0:setLayoutComponentEnabled(true)
Panel_2_0_0:setName("Panel_2_0_0")
Panel_2_0_0:setTag(124)
Panel_2_0_0:setCascadeColorEnabled(true)
Panel_2_0_0:setCascadeOpacityEnabled(true)
Panel_2_0_0:setAnchorPoint(0.5000, 0.5000)
Panel_2_0_0:setPosition(129.0000, 44.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_2_0_0)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setLeftMargin(129.0000)
layout:setRightMargin(129.0000)
layout:setTopMargin(44.0000)
layout:setBottomMargin(44.0000)
btn_rank:addChild(Panel_2_0_0)

--Create LO_Rank_1
local LO_Rank_1 = ccui.Text:create()
LO_Rank_1:ignoreContentAdaptWithSize(true)
LO_Rank_1:setTextAreaSize({width = 0, height = 0})
LO_Rank_1:setFontSize(36)
LO_Rank_1:setString([[排行]])
LO_Rank_1:setLayoutComponentEnabled(true)
LO_Rank_1:setName("LO_Rank_1")
LO_Rank_1:setTag(125)
LO_Rank_1:setCascadeColorEnabled(true)
LO_Rank_1:setCascadeOpacityEnabled(true)
LO_Rank_1:setVisible(false)
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Rank_1)
layout:setSize({width = 72.0000, height = 42.0000})
layout:setLeftMargin(-36.0000)
layout:setRightMargin(-36.0000)
layout:setTopMargin(-21.0000)
layout:setBottomMargin(-21.0000)
Panel_2_0_0:addChild(LO_Rank_1)

--Create LO_Rank_2
local LO_Rank_2 = ccui.Text:create()
LO_Rank_2:ignoreContentAdaptWithSize(true)
LO_Rank_2:setTextAreaSize({width = 0, height = 0})
LO_Rank_2:setFontName("Resource/fonts/OverlapExt.ttf")
LO_Rank_2:setFontSize(36)
LO_Rank_2:setString([[reank]])
LO_Rank_2:setLayoutComponentEnabled(true)
LO_Rank_2:setName("LO_Rank_2")
LO_Rank_2:setTag(126)
LO_Rank_2:setCascadeColorEnabled(true)
LO_Rank_2:setCascadeOpacityEnabled(true)
layout = ccui.LayoutComponent:bindLayoutComponent(LO_Rank_2)
layout:setSize({width = 93.0000, height = 42.0000})
layout:setLeftMargin(-46.5000)
layout:setRightMargin(-46.5000)
layout:setTopMargin(-21.0000)
layout:setBottomMargin(-21.0000)
Panel_2_0_0:addChild(LO_Rank_2)

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
Panel_1:setTag(99)
Panel_1:setCascadeColorEnabled(true)
Panel_1:setCascadeOpacityEnabled(true)
Panel_1:setPosition(617.1826, 1133.0880)
layout = ccui.LayoutComponent:bindLayoutComponent(Panel_1)
layout:setPositionPercentX(0.8229)
layout:setPositionPercentY(0.8494)
layout:setPercentWidth(0.1333)
layout:setPercentHeight(0.0750)
layout:setSize({width = 100.0000, height = 100.0000})
layout:setLeftMargin(617.1826)
layout:setRightMargin(32.8174)
layout:setTopMargin(100.9125)
layout:setBottomMargin(1133.0880)
Layer:addChild(Panel_1)

--Create icon_red
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-home.plist")
local icon_red = cc.Sprite:createWithSpriteFrameName("main-icon-red.png")
icon_red:setName("icon_red")
icon_red:setTag(21)
icon_red:setCascadeColorEnabled(true)
icon_red:setCascadeOpacityEnabled(true)
icon_red:setPosition(90.9211, 45.8294)
layout = ccui.LayoutComponent:bindLayoutComponent(icon_red)
layout:setPositionPercentX(0.9092)
layout:setPositionPercentY(0.4583)
layout:setPercentWidth(0.2500)
layout:setPercentHeight(0.2500)
layout:setSize({width = 25.0000, height = 25.0000})
layout:setLeftMargin(78.4211)
layout:setRightMargin(-3.4211)
layout:setTopMargin(41.6706)
layout:setBottomMargin(33.3294)
icon_red:setBlendFunc({src = 1, dst = 771})
Panel_1:addChild(icon_red)

--Create Text_2
local Text_2 = ccui.Text:create()
Text_2:ignoreContentAdaptWithSize(true)
Text_2:setTextAreaSize({width = 0, height = 0})
Text_2:setFontName("Resource/fonts/OverlapExt.ttf")
Text_2:setFontSize(36)
Text_2:setString([[rec]])
Text_2:setLayoutComponentEnabled(true)
Text_2:setName("Text_2")
Text_2:setTag(100)
Text_2:setCascadeColorEnabled(true)
Text_2:setCascadeOpacityEnabled(true)
Text_2:setPosition(26.8453, 49.1952)
layout = ccui.LayoutComponent:bindLayoutComponent(Text_2)
layout:setPositionPercentX(0.2685)
layout:setPositionPercentY(0.4920)
layout:setPercentWidth(0.5300)
layout:setPercentHeight(0.4200)
layout:setSize({width = 53.0000, height = 42.0000})
layout:setLeftMargin(0.3453)
layout:setRightMargin(46.6547)
layout:setTopMargin(29.8048)
layout:setBottomMargin(28.1952)
Panel_1:addChild(Text_2)

--Create pl_text
local pl_text = ccui.Layout:create()
pl_text:ignoreContentAdaptWithSize(false)
pl_text:setClippingEnabled(false)
pl_text:setBackGroundColorType(1)
pl_text:setBackGroundColor({r = 150, g = 200, b = 255})
pl_text:setBackGroundColorOpacity(0)
pl_text:setLayoutComponentEnabled(true)
pl_text:setName("pl_text")
pl_text:setTag(107)
pl_text:setCascadeColorEnabled(true)
pl_text:setCascadeOpacityEnabled(true)
pl_text:setPosition(0.0000, 520.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(pl_text)
layout:setPositionPercentY(0.3898)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(0.1499)
layout:setSize({width = 750.0000, height = 200.0000})
layout:setVerticalEdge(1)
layout:setTopMargin(614.0000)
layout:setBottomMargin(520.0000)
Layer:addChild(pl_text)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Layer
return result;
end

return Result
