
local HomeMoreView = class("HomeMoreView", cc.load("mvc").ViewBase)

HomeMoreView.RESOURCE_FILENAME = "home.home_more"
HomeMoreView.LOCALE_LANG_LABEL = {
    moreIce          = _("moreIce"),
    moreMary         = _("moreMary"),
}

function HomeMoreView:onCreate()
    self:localLanguage()
end

function HomeMoreView:touch(event)
end



function HomeMoreView:onClick( path,node,funcName)
    if node:getName()=="btn_back"  then
        local function btnCallback(node,eventType)
            gameUtils.transFadeOut(self,Layers_.home)
        end

        return btnCallback
    elseif node:getName()=="btn_maryx"  then
        local function btnCallback(node,eventType)
        end

        return btnCallback
    elseif node:getName()=="btn_ice"  then
        local function btnCallback(node,eventType)
        end

        return btnCallback
    end

end



return HomeMoreView
