
local TravelPageView = class("TravelPageView", cc.load("mvc").ViewBase)

TravelPageView.RESOURCE_FILENAME = "travel.travel_page.lua"


function TravelPageView:onCreate()
    self:get():move(0,0)
end

function TravelPageView:onClick( path,node,funcName)
    if node:getName()=="btn_start" and funcName =="onClick" then
        local function btnCallback(node,eventType)
--            gameUtils.transRight(self,Layers_.select)
        end
        return btnCallback
       end
end


return TravelPageView
