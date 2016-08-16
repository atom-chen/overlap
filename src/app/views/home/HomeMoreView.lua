
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
            AppViews:fadeBackAndClose(self)
        end

        return btnCallback
    elseif node:getName()=="btn_mary"  then
        local function btnCallback(node,eventType)
            if device.platform == device.PLATFORM.IOS then
                device.openURL(string.format(DNP_APP.storeUrl.ios,"998444324"))
            elseif device.platform == device.PLATFORM.ANDROID then
--                device.openURL(DNP_APP.url.allGames)
            end
        end

        return btnCallback
    elseif node:getName()=="btn_ice"  then
        local function btnCallback(node,eventType)
            if device.platform == device.PLATFORM.IOS then
                device.openURL(string.format(DNP_APP.storeUrl.ios,"550436098"))
            elseif device.platform == device.PLATFORM.ANDROID then
            --                device.openURL(DNP_APP.url.allGames)
            end
        end

        return btnCallback
    end

end



return HomeMoreView
