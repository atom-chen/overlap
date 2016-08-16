
local HomeAdsView = class("HomeAdsView", cc.load("mvc").ViewBase)

HomeAdsView.RESOURCE_FILENAME = "home.home_noads"

HomeAdsView.LOCALE_LANG_LABEL = {
    adsinfo        = _("AdsInfo"),
    Donation1        = _("￥1"),
    Donation2        = _("￥6"),
    Donation3        = _("￥12"),
    Donation4        = _("￥30"),
    Donation5        = _("￥100"),
    Donation6        = _("￥300"),
    Donation7        = _("￥600"),
    Donation8        = _("￥1000"),
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
            AppViews:fadeBackAndClose(self)
        end

        return btnCallback
    elseif node:getName()=="edit_name"  then
        local function btnCallback(node,eventType)
        end

        return btnCallback
    end
end



return HomeAdsView
