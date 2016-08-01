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
panel:setBackGroundColor({r = 207, g = 201, b = 201})
panel:setTouchEnabled(true);
panel:setLayoutComponentEnabled(true)
panel:setName("panel")
panel:setTag(2)
panel:setCascadeColorEnabled(true)
panel:setCascadeOpacityEnabled(true)
panel:setAnchorPoint(0.5000, 0.5000)
panel:setPosition(375.0000, 667.0000)
if callBackProvider~=nil then
      panel:addClickEventListener(callBackProvider("skill_type_4.lua", panel, "onClick"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(panel)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentYEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.5000)
layout:setPercentWidth(1.3347)
layout:setPercentHeight(1.0000)
layout:setSize({width = 1001.0000, height = 1334.0000})
layout:setLeftMargin(-125.5000)
layout:setRightMargin(-125.5000)
Layer:addChild(panel)

--Create Sprite_1
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-select.plist")
local Sprite_1 = cc.Sprite:createWithSpriteFrameName("st-3.png")
Sprite_1:setName("Sprite_1")
Sprite_1:setTag(3)
Sprite_1:setCascadeColorEnabled(true)
Sprite_1:setCascadeOpacityEnabled(true)
Sprite_1:setPosition(500.5000, 827.5000)
layout = ccui.LayoutComponent:bindLayoutComponent(Sprite_1)
layout:setPositionPercentXEnabled(true)
layout:setPositionPercentX(0.5000)
layout:setPositionPercentY(0.6203)
layout:setPercentWidth(0.5315)
layout:setPercentHeight(0.6094)
layout:setSize({width = 532.0000, height = 813.0000})
layout:setVerticalEdge(2)
layout:setLeftMargin(234.5000)
layout:setRightMargin(234.5000)
layout:setTopMargin(100.0000)
layout:setBottomMargin(421.0000)
Sprite_1:setBlendFunc({src = 1, dst = 771})
panel:addChild(Sprite_1)

--Create word1
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local word1 = cc.Sprite:createWithSpriteFrameName("word-cn-1.png")
word1:setName("word1")
word1:setTag(10)
word1:setCascadeColorEnabled(true)
word1:setCascadeOpacityEnabled(true)
word1:setPosition(110.1024, 55.5630)
word1:setColor({r = 65, g = 135, b = 110})
layout = ccui.LayoutComponent:bindLayoutComponent(word1)
layout:setPositionPercentX(0.2070)
layout:setPositionPercentY(0.0683)
layout:setPercentWidth(0.1034)
layout:setPercentHeight(0.0664)
layout:setSize({width = 55.0000, height = 54.0000})
layout:setLeftMargin(82.6024)
layout:setRightMargin(394.3976)
layout:setTopMargin(730.4370)
layout:setBottomMargin(28.5630)
word1:setBlendFunc({src = 1, dst = 771})
Sprite_1:addChild(word1)

--Create word2
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local word2 = cc.Sprite:createWithSpriteFrameName("word-cn-2.png")
word2:setName("word2")
word2:setTag(11)
word2:setCascadeColorEnabled(true)
word2:setCascadeOpacityEnabled(true)
word2:setPosition(273.4400, 58.7333)
word2:setScaleX(1.3000)
word2:setScaleY(1.3000)
word2:setColor({r = 161, g = 68, b = 68})
layout = ccui.LayoutComponent:bindLayoutComponent(word2)
layout:setPositionPercentX(0.5140)
layout:setPositionPercentY(0.0722)
layout:setPercentWidth(0.1034)
layout:setPercentHeight(0.0664)
layout:setSize({width = 55.0000, height = 54.0000})
layout:setLeftMargin(245.9400)
layout:setRightMargin(231.0600)
layout:setTopMargin(727.2667)
layout:setBottomMargin(31.7333)
word2:setBlendFunc({src = 1, dst = 771})
Sprite_1:addChild(word2)

--Create word3
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-game.plist")
local word3 = cc.Sprite:createWithSpriteFrameName("word-cn-3.png")
word3:setName("word3")
word3:setTag(12)
word3:setCascadeColorEnabled(true)
word3:setCascadeOpacityEnabled(true)
word3:setPosition(420.0720, 57.4461)
word3:setColor({r = 84, g = 114, b = 193})
layout = ccui.LayoutComponent:bindLayoutComponent(word3)
layout:setPositionPercentX(0.7896)
layout:setPositionPercentY(0.0707)
layout:setPercentWidth(0.1053)
layout:setPercentHeight(0.0677)
layout:setSize({width = 56.0000, height = 55.0000})
layout:setLeftMargin(392.0720)
layout:setRightMargin(83.9280)
layout:setTopMargin(728.0539)
layout:setBottomMargin(29.9461)
word3:setBlendFunc({src = 1, dst = 771})
Sprite_1:addChild(word3)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Layer
return result;
end

return Result

