
local HomeConfigView = class("HomeConfigView", cc.load("mvc").ViewBase)

HomeConfigView.RESOURCE_FILENAME = "home.home_config"

function HomeConfigView:onCreate()
end

function HomeConfigView:touch(event)
end



function HomeConfigView:onClick( path,node,funcName)
    if node:getName()=="btn_back"  then
        local function btnCallback(node,eventType)
            gameUtils.transFadeOut(Layers_.config,Layers_.home)
        end

        return btnCallback
    elseif node:getName()=="btn_lang"  then
        local function btnCallback(node,eventType)
            gameUtils.transFadeIn(self,"app.views.home.ConfigLangView")
        end

        return btnCallback
    elseif node:getName()=="btn_credit"  then
        local function btnCallback(node,eventType)
            gameUtils.transFadeIn(self,"app.views.home.ConfigCreditView")
        end

        return btnCallback
    end
end



return HomeConfigView
