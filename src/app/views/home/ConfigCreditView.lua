
local ConfigCreditView = class("ConfigCreditView", cc.load("mvc").ViewBase)

ConfigCreditView.RESOURCE_FILENAME = "home.home_credit"

function ConfigCreditView:onCreate()

end

function ConfigCreditView:touch(event)
end



function ConfigCreditView:onClick( path,node,funcName)
    if node:getName()=="btn_back"  then
        local function btnCallback(node,eventType)
            AppViews:fadeBackAndClose(self)
        end

        return btnCallback
    end
end



return ConfigCreditView
