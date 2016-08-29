
local ConfigCreditView = class("ConfigCreditView", cc.load("mvc").ViewBase)

ConfigCreditView.RESOURCE_FILENAME = "home.home_credit"

function ConfigCreditView:onCreate()
    self.panelName:setPositionY(-700)
    self:enUpdate()

end

function ConfigCreditView:touch(event)
end

function ConfigCreditView:update(dt)
    local y = self.panelName:getPositionY()
    y = y + 3
    if y > 2300  then
    	y= - 800
    end

    self.panelName:setPositionY(y)

end



function ConfigCreditView:onClick( path,node,funcName)
    if node:getName()=="btn_back"  then
        local function btnCallback(node,eventType)
            audio.playSound(GAME_EFFECT[13])
            AppViews:fadeBackAndClose(self)
        end

        return btnCallback
    end
end



return ConfigCreditView
