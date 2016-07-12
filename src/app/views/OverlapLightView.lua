
local OverlapLightView = class("OverlapLightView", cc.load("mvc").ViewBase)

OverlapLightView.RESOURCE_FILENAME = "flashlight"

--$$$$$$$$$$$$$$$$ CONFIG $$$$$$$$$$$$$$$$$$$$$


--$$$$$$$$$$$$$$$$ ViewBase $$$$$$$$$$$$$$$$$$$$$


function OverlapLightView:onCreate()
    self:get():move(0,0)
    self:runAnimation("show",true)
end


--$$$$$$$$$$$$$$$$ OverlapLightView $$$$$$$$$$$$$$$$$$$$$




return OverlapLightView
