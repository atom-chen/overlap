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

--Create Scene3D
local Scene3D=cc.Node:create()
Scene3D:setName("Scene3D")

--Create UserCamera_0
local UserCamera_0size = cc.Director:getInstance():getWinSize()
local UserCamera_0 = cc.Camera:createPerspective(60.0000, (UserCamera_0size.width / UserCamera_0size.height) , 1.0000, 1000.0000)
UserCamera_0:setName("UserCamera_0")
UserCamera_0:setPosition(0.0000,1.0000)
UserCamera_0:setPositionZ(-10.0000)
UserCamera_0:setCameraMask(31)
UserCamera_0:setCameraFlag(2)
UserCamera_0:setBackgroundBrush(Scene3D_SceneBrush)
Scene3D:addChild(UserCamera_0)

--Create DirectionLight
local DirectionLight=cc.Node:create()
DirectionLight:setName("DirectionLight")
DirectionLight:setPosition(0.0000,3.0000)
DirectionLight:setRotation3D({x = 50, y = 180, z = 0})
DirectionLight:setCameraMask(31)
local DirectionLight_light=cc.DirectionLight:create({x = 0, y = 0, z = 1}, {r = 255, g = 255, b = 255})
DirectionLight:addChild(DirectionLight_light)
Scene3D:addChild(DirectionLight)

--Create Sprite3D_1
local Sprite3D_1 = cc.Sprite3D:create("Default/empty.c3t")
Sprite3D_1:setName("Sprite3D_1")
Sprite3D_1:setPosition(0.4702,0.8735)
Sprite3D_1:setPositionZ(0.0775)
Sprite3D_1:setCameraMask(30)
Sprite3D_1:setLightMask(1)
Scene3D:addChild(Sprite3D_1)

--Create Sprite3D_2
local Sprite3D_2 = cc.Sprite3D:create("Default/empty.c3t")
Sprite3D_2:setName("Sprite3D_2")
Sprite3D_2:setPosition(0.8226,0.9903)
Sprite3D_2:setPositionZ(2.4316)
Sprite3D_2:setCameraMask(30)
Sprite3D_2:setColor({r = 255, g = 0, b = 0})
Sprite3D_2:setLightMask(1)
Scene3D:addChild(Sprite3D_2)

--Create Animation
result['animation'] = ccs.ActionTimeline:create()
  
result['animation']:setDuration(0)
result['animation']:setTimeSpeed(1.0000)
--Create Animation List

result['root'] = Scene3D
return result;
end

return Result
