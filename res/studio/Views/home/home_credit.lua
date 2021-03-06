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
Panel_1:setTag(332)
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

--Create ScrollView_1
local ScrollView_1 = ccui.ScrollView:create()
ScrollView_1:setBounceEnabled(true)
ScrollView_1:setInnerContainerSize({width = 750, height = 2000})
ScrollView_1:ignoreContentAdaptWithSize(false)
ScrollView_1:setClippingEnabled(false)
ScrollView_1:setBackGroundColorType(1)
ScrollView_1:setBackGroundColor({r = 255, g = 150, b = 100})
ScrollView_1:setBackGroundColorOpacity(0)
ScrollView_1:setLayoutComponentEnabled(true)
ScrollView_1:setName("ScrollView_1")
ScrollView_1:setTag(5)
ScrollView_1:setCascadeColorEnabled(true)
ScrollView_1:setCascadeOpacityEnabled(true)
ScrollView_1:setAnchorPoint(0.5000, 0.5000)
ScrollView_1:setPosition(500.5000, 667.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(ScrollView_1)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(0.7493)
layout:setPercentHeight(1.0000)
layout:setSize({width = 750.0000, height = 1334.0000})
layout:setLeftMargin(125.5000)
layout:setRightMargin(125.5000)
Panel_1:addChild(ScrollView_1)

--Create panelName
local panelName = ccui.Layout:create()
panelName:ignoreContentAdaptWithSize(false)
panelName:setClippingEnabled(false)
panelName:setBackGroundColorType(1)
panelName:setBackGroundColor({r = 150, g = 200, b = 255})
panelName:setBackGroundColorOpacity(0)
panelName:setLayoutComponentEnabled(true)
panelName:setName("panelName")
panelName:setTag(6)
panelName:setCascadeColorEnabled(true)
panelName:setCascadeOpacityEnabled(true)
panelName:setPosition(0.0000, -700.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(panelName)
layout:setPositionPercentY(-0.3500)
layout:setPercentWidth(1.0000)
layout:setPercentHeight(0.4001)
layout:setSize({width = 750.0000, height = 1334.0000})
layout:setTopMargin(1366.0000)
layout:setBottomMargin(-700.0000)
ScrollView_1:addChild(panelName)

--Create title
local title = ccui.Text:create()
title:ignoreContentAdaptWithSize(true)
title:setTextAreaSize({width = 0, height = 0})
title:setFontName("Resource/fonts/OverlapExt.ttf")
title:setFontSize(36)
title:setString([[honorory by]])
title:setLayoutComponentEnabled(true)
title:setName("title")
title:setTag(8)
title:setCascadeColorEnabled(true)
title:setCascadeOpacityEnabled(true)
title:setPosition(386.6052, 1188.2170)
title:setTextColor({r = 242, g = 251, b = 254})
layout = ccui.LayoutComponent:bindLayoutComponent(title)
layout:setPositionPercentX(0.5155)
layout:setPositionPercentY(0.8907)
layout:setPercentWidth(0.2773)
layout:setPercentHeight(0.0315)
layout:setSize({width = 208.0000, height = 42.0000})
layout:setLeftMargin(282.6052)
layout:setRightMargin(259.3948)
layout:setTopMargin(124.7833)
layout:setBottomMargin(1167.2170)
panelName:addChild(title)

--Create logo
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-home.plist")
local logo = cc.Sprite:createWithSpriteFrameName("logo-donopo.png")
logo:setName("logo")
logo:setTag(7)
logo:setCascadeColorEnabled(true)
logo:setCascadeOpacityEnabled(true)
logo:setPosition(382.5682, 1121.3580)
layout = ccui.LayoutComponent:bindLayoutComponent(logo)
layout:setPositionPercentX(0.5101)
layout:setPositionPercentY(0.8406)
layout:setPercentWidth(0.3933)
layout:setPercentHeight(0.0457)
layout:setSize({width = 295.0000, height = 61.0000})
layout:setLeftMargin(235.0682)
layout:setRightMargin(219.9318)
layout:setTopMargin(182.1417)
layout:setBottomMargin(1090.8580)
logo:setBlendFunc({src = 1, dst = 771})
panelName:addChild(logo)

--Create t1
local t1 = ccui.Text:create()
t1:ignoreContentAdaptWithSize(true)
t1:setTextAreaSize({width = 0, height = 0})
t1:setFontName("Resource/fonts/OverlapExt.ttf")
t1:setFontSize(36)
t1:setString([[Producer / Story]])
t1:setLayoutComponentEnabled(true)
t1:setName("t1")
t1:setTag(9)
t1:setCascadeColorEnabled(true)
t1:setCascadeOpacityEnabled(true)
t1:setPosition(391.8662, 908.9366)
t1:setTextColor({r = 242, g = 251, b = 254})
layout = ccui.LayoutComponent:bindLayoutComponent(t1)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.6814)
layout:setPercentWidth(0.3947)
layout:setPercentHeight(0.0315)
layout:setSize({width = 296.0000, height = 42.0000})
layout:setLeftMargin(243.8662)
layout:setRightMargin(210.1338)
layout:setTopMargin(404.0634)
layout:setBottomMargin(887.9366)
panelName:addChild(t1)

--Create t2
local t2 = ccui.Text:create()
t2:ignoreContentAdaptWithSize(true)
t2:setTextAreaSize({width = 0, height = 0})
t2:setFontName("Resource/fonts/OverlapExt.ttf")
t2:setFontSize(36)
t2:setString([[Visual By]])
t2:setLayoutComponentEnabled(true)
t2:setName("t2")
t2:setTag(10)
t2:setCascadeColorEnabled(true)
t2:setCascadeOpacityEnabled(true)
t2:setPosition(391.8662, 757.7184)
t2:setTextColor({r = 242, g = 251, b = 254})
layout = ccui.LayoutComponent:bindLayoutComponent(t2)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.5680)
layout:setPercentWidth(0.2147)
layout:setPercentHeight(0.0315)
layout:setSize({width = 161.0000, height = 42.0000})
layout:setLeftMargin(311.3662)
layout:setRightMargin(277.6338)
layout:setTopMargin(555.2816)
layout:setBottomMargin(736.7184)
panelName:addChild(t2)

--Create t3
local t3 = ccui.Text:create()
t3:ignoreContentAdaptWithSize(true)
t3:setTextAreaSize({width = 0, height = 0})
t3:setFontName("Resource/fonts/OverlapExt.ttf")
t3:setFontSize(36)
t3:setString([[Code]])
t3:setLayoutComponentEnabled(true)
t3:setName("t3")
t3:setTag(11)
t3:setCascadeColorEnabled(true)
t3:setCascadeOpacityEnabled(true)
t3:setPosition(391.8661, 618.4430)
t3:setTextColor({r = 242, g = 251, b = 254})
layout = ccui.LayoutComponent:bindLayoutComponent(t3)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.4636)
layout:setPercentWidth(0.0960)
layout:setPercentHeight(0.0315)
layout:setSize({width = 72.0000, height = 42.0000})
layout:setLeftMargin(355.8661)
layout:setRightMargin(322.1339)
layout:setTopMargin(694.5570)
layout:setBottomMargin(597.4430)
panelName:addChild(t3)

--Create t4
local t4 = ccui.Text:create()
t4:ignoreContentAdaptWithSize(true)
t4:setTextAreaSize({width = 0, height = 0})
t4:setFontName("Resource/fonts/OverlapExt.ttf")
t4:setFontSize(36)
t4:setString([[Game Design]])
t4:setLayoutComponentEnabled(true)
t4:setName("t4")
t4:setTag(12)
t4:setCascadeColorEnabled(true)
t4:setCascadeOpacityEnabled(true)
t4:setPosition(391.8662, 474.3940)
t4:setTextColor({r = 242, g = 251, b = 254})
layout = ccui.LayoutComponent:bindLayoutComponent(t4)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.3556)
layout:setPercentWidth(0.2693)
layout:setPercentHeight(0.0315)
layout:setSize({width = 202.0000, height = 42.0000})
layout:setLeftMargin(290.8662)
layout:setRightMargin(257.1338)
layout:setTopMargin(838.6060)
layout:setBottomMargin(453.3940)
panelName:addChild(t4)

--Create t5
local t5 = ccui.Text:create()
t5:ignoreContentAdaptWithSize(true)
t5:setTextAreaSize({width = 0, height = 0})
t5:setFontName("Resource/fonts/OverlapExt.ttf")
t5:setFontSize(36)
t5:setString([[Art]])
t5:setLayoutComponentEnabled(true)
t5:setName("t5")
t5:setTag(13)
t5:setCascadeColorEnabled(true)
t5:setCascadeOpacityEnabled(true)
t5:setPosition(391.8662, 284.9574)
t5:setTextColor({r = 242, g = 251, b = 254})
layout = ccui.LayoutComponent:bindLayoutComponent(t5)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.2136)
layout:setPercentWidth(0.0760)
layout:setPercentHeight(0.0315)
layout:setSize({width = 57.0000, height = 42.0000})
layout:setLeftMargin(363.3662)
layout:setRightMargin(329.6338)
layout:setTopMargin(1028.0430)
layout:setBottomMargin(263.9574)
panelName:addChild(t5)

--Create t6
local t6 = ccui.Text:create()
t6:ignoreContentAdaptWithSize(true)
t6:setTextAreaSize({width = 0, height = 0})
t6:setFontName("Resource/fonts/OverlapExt.ttf")
t6:setFontSize(30)
t6:setString([[Tim Mars]])
t6:setLayoutComponentEnabled(true)
t6:setName("t6")
t6:setTag(14)
t6:setCascadeColorEnabled(true)
t6:setCascadeOpacityEnabled(true)
t6:setPosition(391.8662, 856.7651)
t6:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t6)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.6423)
layout:setPercentWidth(0.1720)
layout:setPercentHeight(0.0262)
layout:setSize({width = 129.0000, height = 35.0000})
layout:setLeftMargin(327.3662)
layout:setRightMargin(293.6338)
layout:setTopMargin(459.7349)
layout:setBottomMargin(839.2651)
panelName:addChild(t6)

--Create t8
local t8 = ccui.Text:create()
t8:ignoreContentAdaptWithSize(true)
t8:setTextAreaSize({width = 0, height = 0})
t8:setFontName("Resource/fonts/OverlapExt.ttf")
t8:setFontSize(30)
t8:setString([[Tim Mars]])
t8:setLayoutComponentEnabled(true)
t8:setName("t8")
t8:setTag(15)
t8:setCascadeColorEnabled(true)
t8:setCascadeOpacityEnabled(true)
t8:setPosition(391.8662, 707.8081)
t8:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t8)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.5306)
layout:setPercentWidth(0.1720)
layout:setPercentHeight(0.0262)
layout:setSize({width = 129.0000, height = 35.0000})
layout:setLeftMargin(327.3662)
layout:setRightMargin(293.6338)
layout:setTopMargin(608.6919)
layout:setBottomMargin(690.3081)
panelName:addChild(t8)

--Create t9
local t9 = ccui.Text:create()
t9:ignoreContentAdaptWithSize(true)
t9:setTextAreaSize({width = 0, height = 0})
t9:setFontName("Resource/fonts/OverlapExt.ttf")
t9:setFontSize(30)
t9:setString([[Hang Yu]])
t9:setLayoutComponentEnabled(true)
t9:setName("t9")
t9:setTag(16)
t9:setCascadeColorEnabled(true)
t9:setCascadeOpacityEnabled(true)
t9:setPosition(391.8661, 569.8521)
t9:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t9)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.4272)
layout:setPercentWidth(0.1507)
layout:setPercentHeight(0.0262)
layout:setSize({width = 113.0000, height = 35.0000})
layout:setLeftMargin(335.3661)
layout:setRightMargin(301.6339)
layout:setTopMargin(746.6479)
layout:setBottomMargin(552.3521)
panelName:addChild(t9)

--Create t10
local t10 = ccui.Text:create()
t10:ignoreContentAdaptWithSize(true)
t10:setTextAreaSize({width = 0, height = 0})
t10:setFontName("Resource/fonts/OverlapExt.ttf")
t10:setFontSize(30)
t10:setString([[Tim Mars]])
t10:setLayoutComponentEnabled(true)
t10:setName("t10")
t10:setTag(17)
t10:setCascadeColorEnabled(true)
t10:setCascadeOpacityEnabled(true)
t10:setPosition(391.8662, 420.9242)
t10:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t10)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.3155)
layout:setPercentWidth(0.1720)
layout:setPercentHeight(0.0262)
layout:setSize({width = 129.0000, height = 35.0000})
layout:setLeftMargin(327.3662)
layout:setRightMargin(293.6338)
layout:setTopMargin(895.5758)
layout:setBottomMargin(403.4242)
panelName:addChild(t10)

--Create t11
local t11 = ccui.Text:create()
t11:ignoreContentAdaptWithSize(true)
t11:setTextAreaSize({width = 0, height = 0})
t11:setFontName("Resource/fonts/OverlapExt.ttf")
t11:setFontSize(30)
t11:setString([[Hao Zhang]])
t11:setLayoutComponentEnabled(true)
t11:setName("t11")
t11:setTag(18)
t11:setCascadeColorEnabled(true)
t11:setCascadeOpacityEnabled(true)
t11:setPosition(391.8661, 376.9020)
t11:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t11)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.2825)
layout:setPercentWidth(0.1947)
layout:setPercentHeight(0.0262)
layout:setSize({width = 146.0000, height = 35.0000})
layout:setLeftMargin(318.8661)
layout:setRightMargin(285.1339)
layout:setTopMargin(939.5980)
layout:setBottomMargin(359.4020)
panelName:addChild(t11)

--Create t12
local t12 = ccui.Text:create()
t12:ignoreContentAdaptWithSize(true)
t12:setTextAreaSize({width = 0, height = 0})
t12:setFontName("Resource/fonts/OverlapExt.ttf")
t12:setFontSize(30)
t12:setString([[Jinye Jia]])
t12:setLayoutComponentEnabled(true)
t12:setName("t12")
t12:setTag(19)
t12:setCascadeColorEnabled(true)
t12:setCascadeOpacityEnabled(true)
t12:setPosition(391.8661, 238.9687)
t12:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t12)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.1791)
layout:setPercentWidth(0.1693)
layout:setPercentHeight(0.0262)
layout:setSize({width = 127.0000, height = 35.0000})
layout:setLeftMargin(328.3661)
layout:setRightMargin(294.6339)
layout:setTopMargin(1077.5310)
layout:setBottomMargin(221.4687)
panelName:addChild(t12)

--Create t13
local t13 = ccui.Text:create()
t13:ignoreContentAdaptWithSize(true)
t13:setTextAreaSize({width = 0, height = 0})
t13:setFontName("Resource/fonts/OverlapExt.ttf")
t13:setFontSize(30)
t13:setString([[Yiteng Wang]])
t13:setLayoutComponentEnabled(true)
t13:setName("t13")
t13:setTag(20)
t13:setCascadeColorEnabled(true)
t13:setCascadeOpacityEnabled(true)
t13:setPosition(391.8662, 197.8412)
t13:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t13)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.1483)
layout:setPercentWidth(0.2360)
layout:setPercentHeight(0.0262)
layout:setSize({width = 177.0000, height = 35.0000})
layout:setLeftMargin(303.3662)
layout:setRightMargin(269.6338)
layout:setTopMargin(1118.6590)
layout:setBottomMargin(180.3412)
panelName:addChild(t13)

--Create t14
local t14 = ccui.Text:create()
t14:ignoreContentAdaptWithSize(true)
t14:setTextAreaSize({width = 0, height = 0})
t14:setFontName("Resource/fonts/OverlapExt.ttf")
t14:setFontSize(30)
t14:setString([[Ruifen Shi]])
t14:setLayoutComponentEnabled(true)
t14:setName("t14")
t14:setTag(21)
t14:setCascadeColorEnabled(true)
t14:setCascadeOpacityEnabled(true)
t14:setPosition(391.8662, 154.1292)
t14:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t14)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.1155)
layout:setPercentWidth(0.1933)
layout:setPercentHeight(0.0262)
layout:setSize({width = 145.0000, height = 35.0000})
layout:setLeftMargin(319.3662)
layout:setRightMargin(285.6338)
layout:setTopMargin(1162.3710)
layout:setBottomMargin(136.6292)
panelName:addChild(t14)

--Create t15
local t15 = ccui.Text:create()
t15:ignoreContentAdaptWithSize(true)
t15:setTextAreaSize({width = 0, height = 0})
t15:setFontName("Resource/fonts/OverlapExt.ttf")
t15:setFontSize(36)
t15:setString([[UI Design]])
t15:setLayoutComponentEnabled(true)
t15:setName("t15")
t15:setTag(53)
t15:setCascadeColorEnabled(true)
t15:setCascadeOpacityEnabled(true)
t15:setPosition(391.8662, 44.3924)
t15:setTextColor({r = 242, g = 251, b = 254})
layout = ccui.LayoutComponent:bindLayoutComponent(t15)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(0.0333)
layout:setPercentWidth(0.2027)
layout:setPercentHeight(0.0315)
layout:setSize({width = 152.0000, height = 42.0000})
layout:setLeftMargin(315.8662)
layout:setRightMargin(282.1338)
layout:setTopMargin(1268.6080)
layout:setBottomMargin(23.3924)
panelName:addChild(t15)

--Create t16
local t16 = ccui.Text:create()
t16:ignoreContentAdaptWithSize(true)
t16:setTextAreaSize({width = 0, height = 0})
t16:setFontName("Resource/fonts/OverlapExt.ttf")
t16:setFontSize(30)
t16:setString([[Tim Mars]])
t16:setLayoutComponentEnabled(true)
t16:setName("t16")
t16:setTag(49)
t16:setCascadeColorEnabled(true)
t16:setCascadeOpacityEnabled(true)
t16:setPosition(391.8662, -9.7447)
t16:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t16)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(-0.0073)
layout:setPercentWidth(0.1720)
layout:setPercentHeight(0.0262)
layout:setSize({width = 129.0000, height = 35.0000})
layout:setLeftMargin(327.3662)
layout:setRightMargin(293.6338)
layout:setTopMargin(1326.2450)
layout:setBottomMargin(-27.2447)
panelName:addChild(t16)

--Create t17
local t17 = ccui.Text:create()
t17:ignoreContentAdaptWithSize(true)
t17:setTextAreaSize({width = 0, height = 0})
t17:setFontName("Resource/fonts/OverlapExt.ttf")
t17:setFontSize(30)
t17:setString([[Big Dan]])
t17:setLayoutComponentEnabled(true)
t17:setName("t17")
t17:setTag(50)
t17:setCascadeColorEnabled(true)
t17:setCascadeOpacityEnabled(true)
t17:setPosition(391.8662, -52.0012)
t17:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t17)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(-0.0390)
layout:setPercentWidth(0.1373)
layout:setPercentHeight(0.0262)
layout:setSize({width = 103.0000, height = 35.0000})
layout:setLeftMargin(340.3662)
layout:setRightMargin(306.6338)
layout:setTopMargin(1368.5010)
layout:setBottomMargin(-69.5012)
panelName:addChild(t17)

--Create t18
local t18 = ccui.Text:create()
t18:ignoreContentAdaptWithSize(true)
t18:setTextAreaSize({width = 0, height = 0})
t18:setFontName("Resource/fonts/OverlapExt.ttf")
t18:setFontSize(36)
t18:setString([[Game Assistan By]])
t18:setLayoutComponentEnabled(true)
t18:setName("t18")
t18:setTag(54)
t18:setCascadeColorEnabled(true)
t18:setCascadeOpacityEnabled(true)
t18:setPosition(391.8662, -130.2969)
t18:setTextColor({r = 242, g = 251, b = 254})
layout = ccui.LayoutComponent:bindLayoutComponent(t18)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(-0.0977)
layout:setPercentWidth(0.3987)
layout:setPercentHeight(0.0315)
layout:setSize({width = 299.0000, height = 42.0000})
layout:setLeftMargin(242.3662)
layout:setRightMargin(208.6338)
layout:setTopMargin(1443.2970)
layout:setBottomMargin(-151.2969)
panelName:addChild(t18)

--Create t19
local t19 = ccui.Text:create()
t19:ignoreContentAdaptWithSize(true)
t19:setTextAreaSize({width = 0, height = 0})
t19:setFontName("Resource/fonts/OverlapExt.ttf")
t19:setFontSize(30)
t19:setString([[Sizhe]])
t19:setLayoutComponentEnabled(true)
t19:setName("t19")
t19:setTag(51)
t19:setCascadeColorEnabled(true)
t19:setCascadeOpacityEnabled(true)
t19:setPosition(391.8661, -188.8055)
t19:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t19)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(-0.1415)
layout:setPercentWidth(0.0973)
layout:setPercentHeight(0.0262)
layout:setSize({width = 73.0000, height = 35.0000})
layout:setLeftMargin(355.3661)
layout:setRightMargin(321.6339)
layout:setTopMargin(1505.3050)
layout:setBottomMargin(-206.3055)
panelName:addChild(t19)

--Create t20
local t20 = ccui.Text:create()
t20:ignoreContentAdaptWithSize(true)
t20:setTextAreaSize({width = 0, height = 0})
t20:setFontName("Resource/fonts/OverlapExt.ttf")
t20:setFontSize(36)
t20:setString([[Support]])
t20:setLayoutComponentEnabled(true)
t20:setName("t20")
t20:setTag(55)
t20:setCascadeColorEnabled(true)
t20:setCascadeOpacityEnabled(true)
t20:setPosition(391.8662, -259.2446)
t20:setTextColor({r = 242, g = 251, b = 254})
layout = ccui.LayoutComponent:bindLayoutComponent(t20)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(-0.1943)
layout:setPercentWidth(0.1787)
layout:setPercentHeight(0.0315)
layout:setSize({width = 134.0000, height = 42.0000})
layout:setLeftMargin(324.8662)
layout:setRightMargin(291.1338)
layout:setTopMargin(1572.2450)
layout:setBottomMargin(-280.2446)
panelName:addChild(t20)

--Create t21
local t21 = ccui.Text:create()
t21:ignoreContentAdaptWithSize(true)
t21:setTextAreaSize({width = 0, height = 0})
t21:setFontName("Resource/fonts/OverlapExt.ttf")
t21:setFontSize(30)
t21:setString([[Jingshuo]])
t21:setLayoutComponentEnabled(true)
t21:setName("t21")
t21:setTag(56)
t21:setCascadeColorEnabled(true)
t21:setCascadeOpacityEnabled(true)
t21:setPosition(391.8662, -312.5054)
t21:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t21)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(-0.2343)
layout:setPercentWidth(0.1653)
layout:setPercentHeight(0.0262)
layout:setSize({width = 124.0000, height = 35.0000})
layout:setLeftMargin(329.8662)
layout:setRightMargin(296.1338)
layout:setTopMargin(1629.0050)
layout:setBottomMargin(-330.0054)
panelName:addChild(t21)

--Create t22
local t22 = ccui.Text:create()
t22:ignoreContentAdaptWithSize(true)
t22:setTextAreaSize({width = 0, height = 0})
t22:setFontName("Resource/fonts/OverlapExt.ttf")
t22:setFontSize(30)
t22:setString([[Dodo]])
t22:setLayoutComponentEnabled(true)
t22:setName("t22")
t22:setTag(57)
t22:setCascadeColorEnabled(true)
t22:setCascadeOpacityEnabled(true)
t22:setPosition(391.8662, -366.2362)
t22:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t22)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(-0.2745)
layout:setPercentWidth(0.0813)
layout:setPercentHeight(0.0262)
layout:setSize({width = 61.0000, height = 35.0000})
layout:setLeftMargin(361.3662)
layout:setRightMargin(327.6338)
layout:setTopMargin(1682.7360)
layout:setBottomMargin(-383.7362)
panelName:addChild(t22)

--Create t23
local t23 = ccui.Text:create()
t23:ignoreContentAdaptWithSize(true)
t23:setTextAreaSize({width = 0, height = 0})
t23:setFontName("Resource/fonts/OverlapExt.ttf")
t23:setFontSize(30)
t23:setString([[Huifen]])
t23:setLayoutComponentEnabled(true)
t23:setName("t23")
t23:setTag(58)
t23:setCascadeColorEnabled(true)
t23:setCascadeOpacityEnabled(true)
t23:setPosition(391.8662, -414.7194)
t23:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t23)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(-0.3109)
layout:setPercentWidth(0.1227)
layout:setPercentHeight(0.0262)
layout:setSize({width = 92.0000, height = 35.0000})
layout:setLeftMargin(345.8662)
layout:setRightMargin(312.1338)
layout:setTopMargin(1731.2190)
layout:setBottomMargin(-432.2194)
panelName:addChild(t23)

--Create t25
local t25 = ccui.Text:create()
t25:ignoreContentAdaptWithSize(true)
t25:setTextAreaSize({width = 0, height = 0})
t25:setFontName("Resource/fonts/OverlapExt.ttf")
t25:setFontSize(30)
t25:setString([[Zhungkai]])
t25:setLayoutComponentEnabled(true)
t25:setName("t25")
t25:setTag(59)
t25:setCascadeColorEnabled(true)
t25:setCascadeOpacityEnabled(true)
t25:setPosition(391.8661, -457.9548)
t25:setTextColor({r = 66, g = 66, b = 66})
layout = ccui.LayoutComponent:bindLayoutComponent(t25)
layout:setPositionPercentX(0.5225)
layout:setPositionPercentY(-0.3433)
layout:setPercentWidth(0.1680)
layout:setPercentHeight(0.0262)
layout:setSize({width = 126.0000, height = 35.0000})
layout:setLeftMargin(328.8661)
layout:setRightMargin(295.1339)
layout:setTopMargin(1774.4550)
layout:setBottomMargin(-475.4548)
panelName:addChild(t25)

--Create btn_back
local btn_back = ccui.Button:create()
btn_back:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_back:loadTextureNormal("btn-common-back.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_back:loadTexturePressed("btn-common-back.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-common.plist")
btn_back:loadTextureDisabled("btn-common-back.png",1)
btn_back:setTitleFontSize(14)
btn_back:setTitleColor({r = 65, g = 65, b = 70})
btn_back:setScale9Enabled(true)
btn_back:setCapInsets({x = 15, y = 11, width = 99, height = 60})
btn_back:setLayoutComponentEnabled(true)
btn_back:setName("btn_back")
btn_back:setTag(48)
btn_back:setCascadeColorEnabled(true)
btn_back:setCascadeOpacityEnabled(true)
btn_back:setPosition(81.5000, 89.5000)
btn_back.UserData = {}
btn_back.UserData[1] = [==========[sb]==========]
if callBackProvider~=nil then
      btn_back:addClickEventListener(callBackProvider("home_credit.lua", btn_back, "onClick"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(btn_back)
layout:setPositionPercentX(0.1087)
layout:setPositionPercentY(0.0671)
layout:setPercentWidth(0.1720)
layout:setPercentHeight(0.0615)
layout:setSize({width = 129.0000, height = 82.0000})
layout:setHorizontalEdge(1)
layout:setVerticalEdge(1)
layout:setLeftMargin(17.0000)
layout:setRightMargin(604.0000)
layout:setTopMargin(1203.5000)
layout:setBottomMargin(48.5000)
Layer:addChild(btn_back)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Layer
return result;
end

return Result

