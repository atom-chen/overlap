
local HomeAdsView = class("HomeAdsView", cc.load("mvc").ViewBase)

HomeAdsView.RESOURCE_FILENAME = "home.home_noads"

HomeAdsView.LOCALE_LANG_LABEL = {
    adsinfo        = _("AdsInfo"),
}
function HomeAdsView:onCreate()
    self:localLanguage()
    self.edit_name:setTextHorizontalAlignment(cc.TEXT_ALIGNMENT_CENTER)
end

function HomeAdsView:touch(event)
end



function HomeAdsView:onClick( path,node,funcName)
    if node:getName()=="btn_back"  then
        local function btnCallback(node,eventType)
            gameUtils.transFadeOut(self,Layers_.home)
        end

        return btnCallback
    elseif node:getName()=="edit_name"  then
        local function btnCallback(node,eventType)
        end

        return btnCallback
    end
end



return HomeAdsView
