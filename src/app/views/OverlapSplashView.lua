
local OverlapSplashView = class("OverlapSplashView", cc.load("mvc").ViewBase)

OverlapSplashView.RESOURCE_FILENAME = "olap_splash"

OverlapSplashView.RESOURCE_BINDING = {
    actions = {enterAni = "enter"}
}
--$$$$$$$$$$$$$$$$ CONFIG $$$$$$$$$$$$$$$$$$$$$


--$$$$$$$$$$$$$$$$ ViewBase $$$$$$$$$$$$$$$$$$$$$


function OverlapSplashView:onCreate()
end

function OverlapSplashView:onFrameEvent(frame)
    local eventName = frame:getEvent()
    if  eventName == "exitEvent" then
        gameUtils.splashMask(0.2)
        local function call()
            AppViews:getView(Layers_.mainScene):onGame()
        end
        ac.ccDellayToCall(self,0.1,call)
    end
end


--$$$$$$$$$$$$$$$$ OverlapSplashView $$$$$$$$$$$$$$$$$$$$$



return OverlapSplashView
