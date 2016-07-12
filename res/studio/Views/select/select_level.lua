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

--Create Node
local Node=cc.Node:create()
Node:setName("Node")

--Create panel
local panel = ccui.Layout:create()
panel:ignoreContentAdaptWithSize(false)
panel:setClippingEnabled(false)
panel:setBackGroundColorType(1)
panel:setBackGroundColor({r = 150, g = 200, b = 255})
panel:setBackGroundColorOpacity(0)
panel:setLayoutComponentEnabled(true)
panel:setName("panel")
panel:setTag(38)
panel:setCascadeColorEnabled(true)
panel:setCascadeOpacityEnabled(true)
panel:setAnchorPoint(0.5000, 0.5000)
panel:setPosition(82.5000, 82.5000)
layout = ccui.LayoutComponent:bindLayoutComponent(panel)
layout:setSize({width = 165.0000, height = 165.0000})
layout:setRightMargin(-165.0000)
layout:setTopMargin(-165.0000)
Node:addChild(panel)

--Create btn_select
local btn_select = ccui.Button:create()
btn_select:ignoreContentAdaptWithSize(false)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-select.plist")
btn_select:loadTextureNormal("sp-select-level-board-1.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-select.plist")
btn_select:loadTexturePressed("sp-select-level-board-1.png",1)
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-select.plist")
btn_select:loadTextureDisabled("sp-select-level-board-1.png",1)
btn_select:setTitleFontSize(14)
btn_select:setTitleColor({r = 65, g = 65, b = 70})
btn_select:setScale9Enabled(true)
btn_select:setCapInsets({x = 15, y = 11, width = 105, height = 54})
btn_select:setLayoutComponentEnabled(true)
btn_select:setName("btn_select")
btn_select:setTag(141)
btn_select:setCascadeColorEnabled(true)
btn_select:setCascadeOpacityEnabled(true)
btn_select:setPosition(70.4614, 124.8512)
if callBackProvider~=nil then
      btn_select:addTouchEventListener(callBackProvider("select_level.lua", btn_select, "onTouch"))
end
layout = ccui.LayoutComponent:bindLayoutComponent(btn_select)
layout:setPositionPercentX(0.4270)
layout:setPositionPercentY(0.7567)
layout:setPercentWidth(0.8182)
layout:setPercentHeight(0.4606)
layout:setSize({width = 135.0000, height = 76.0000})
layout:setLeftMargin(2.9614)
layout:setRightMargin(27.0386)
layout:setTopMargin(2.1488)
layout:setBottomMargin(86.8512)
panel:addChild(btn_select)

--Create star1
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-select.plist")
local star1 = cc.Sprite:createWithSpriteFrameName("icon-select-star.png")
star1:setName("star1")
star1:setTag(42)
star1:setCascadeColorEnabled(true)
star1:setCascadeOpacityEnabled(true)
star1:setPosition(49.5140, 70.5353)
layout = ccui.LayoutComponent:bindLayoutComponent(star1)
layout:setPositionPercentX(0.3001)
layout:setPositionPercentY(0.4275)
layout:setPercentWidth(0.1394)
layout:setPercentHeight(0.1394)
layout:setSize({width = 23.0000, height = 23.0000})
layout:setLeftMargin(38.0140)
layout:setRightMargin(103.9860)
layout:setTopMargin(82.9647)
layout:setBottomMargin(59.0353)
star1:setBlendFunc({src = 1, dst = 771})
panel:addChild(star1)

--Create star2
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-select.plist")
local star2 = cc.Sprite:createWithSpriteFrameName("icon-select-star.png")
star2:setName("star2")
star2:setTag(43)
star2:setCascadeColorEnabled(true)
star2:setCascadeOpacityEnabled(true)
star2:setPosition(83.8858, 70.5353)
layout = ccui.LayoutComponent:bindLayoutComponent(star2)
layout:setPositionPercentX(0.5084)
layout:setPositionPercentY(0.4275)
layout:setPercentWidth(0.1394)
layout:setPercentHeight(0.1394)
layout:setSize({width = 23.0000, height = 23.0000})
layout:setLeftMargin(72.3858)
layout:setRightMargin(69.6142)
layout:setTopMargin(82.9647)
layout:setBottomMargin(59.0353)
star2:setBlendFunc({src = 1, dst = 771})
panel:addChild(star2)

--Create star3
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-select.plist")
local star3 = cc.Sprite:createWithSpriteFrameName("icon-select-star.png")
star3:setName("star3")
star3:setTag(41)
star3:setCascadeColorEnabled(true)
star3:setCascadeOpacityEnabled(true)
star3:setPosition(118.2578, 70.5353)
layout = ccui.LayoutComponent:bindLayoutComponent(star3)
layout:setPositionPercentX(0.7167)
layout:setPositionPercentY(0.4275)
layout:setPercentWidth(0.1394)
layout:setPercentHeight(0.1394)
layout:setSize({width = 23.0000, height = 23.0000})
layout:setLeftMargin(106.7578)
layout:setRightMargin(35.2422)
layout:setTopMargin(82.9647)
layout:setBottomMargin(59.0353)
star3:setBlendFunc({src = 1, dst = 771})
panel:addChild(star3)

--Create level
local level = ccui.Text:create()
level:ignoreContentAdaptWithSize(true)
level:setTextAreaSize({width = 0, height = 0})
level:setFontName("Resource/fonts/OverlapExt.ttf")
level:setFontSize(36)
level:setString([[3-1]])
level:setTextHorizontalAlignment(1)
level:setTextVerticalAlignment(1)
level:setLayoutComponentEnabled(true)
level:setName("level")
level:setTag(44)
level:setCascadeColorEnabled(true)
level:setCascadeOpacityEnabled(true)
level:setPosition(65.4169, 125.6716)
level:setTextColor({r = 244, g = 241, b = 240})
layout = ccui.LayoutComponent:bindLayoutComponent(level)
layout:setPositionPercentX(0.3965)
layout:setPositionPercentY(0.7616)
layout:setPercentWidth(0.3758)
layout:setPercentHeight(0.2545)
layout:setSize({width = 62.0000, height = 42.0000})
layout:setLeftMargin(34.4169)
layout:setRightMargin(68.5831)
layout:setTopMargin(18.3284)
layout:setBottomMargin(104.6716)
panel:addChild(level)

--Create lock
cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/ui-select.plist")
local lock = cc.Sprite:createWithSpriteFrameName("sp-select-level-lock.png")
lock:setName("lock")
lock:setTag(8)
lock:setCascadeColorEnabled(true)
lock:setCascadeOpacityEnabled(true)
lock:setVisible(false)
lock:setPosition(71.0000, 125.0000)
layout = ccui.LayoutComponent:bindLayoutComponent(lock)
layout:setPositionPercentX(0.4303)
layout:setPositionPercentY(0.7576)
layout:setPercentWidth(0.2485)
layout:setPercentHeight(0.2848)
layout:setSize({width = 41.0000, height = 47.0000})
layout:setLeftMargin(50.5000)
layout:setRightMargin(73.5000)
layout:setTopMargin(16.5000)
layout:setBottomMargin(101.5000)
lock:setBlendFunc({src = 1, dst = 771})
panel:addChild(lock)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Node
return result;
end

return Result
