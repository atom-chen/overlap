
local HomeAdsView = class("HomeAdsView", cc.load("mvc").ViewBase)

HomeAdsView.RESOURCE_FILENAME = "home.home_noads"

HomeAdsView.LOCALE_LANG_LABEL = {
    adsinfo        = _("AdsInfo"),
    Donation1        = _("$1"),
    Donation2        = _("$6"),
    Donation3        = _("$12"),
    Donation4        = _("$30"),
    Donation5        = _("$100"),
    Donation6        = _("$300"),
    Donation7        = _("$600"),
    Donation8        = _("$1000"),
}
function HomeAdsView:onCreate()
    self:localLanguage()
    self.edit_name:setTextHorizontalAlignment(cc.TEXT_ALIGNMENT_CENTER)
    if device.platform == device.PLATFORM.IOS then
        local function locadProductCall(result)
            for key, var in pairs(result["products"]) do
                if var.productIdentifier == DNP_GAME.iap.ios[1] then
               	    self["Donation1"]:setString(var.price)
                elseif var.productIdentifier == DNP_GAME.iap.ios[2] then
               	    self["Donation2"]:setString(var.price)
                elseif var.productIdentifier == DNP_GAME.iap.ios[3] then
               	    self["Donation3"]:setString(var.price)
                elseif var.productIdentifier == DNP_GAME.iap.ios[4] then
               	    self["Donation4"]:setString(var.price)
                elseif var.productIdentifier == DNP_GAME.iap.ios[5] then
               	    self["Donation5"]:setString(var.price)
                elseif var.productIdentifier == DNP_GAME.iap.ios[6] then
               	    self["Donation6"]:setString(var.price)
                elseif var.productIdentifier == DNP_GAME.iap.ios[7] then
               	    self["Donation7"]:setString(var.price)
                elseif var.productIdentifier == DNP_GAME.iap.ios[8] then
               	    self["Donation8"]:setString(var.price)
               end
               
                self["btn_dnt_"..key]:setBright(true)
           end
        end
        store.loadProducts(DNP_GAME.iap.ios, locadProductCall)
    end
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
    elseif node:getName()=="btn_dnt_1"  then
        local function btnCallback(node,eventType)
            print(DNP_GAME.iap.ios[1])
            store.purchase(DNP_GAME.iap.ios[1])
        end
        return btnCallback
    elseif node:getName()=="btn_dnt_2"  then
        local function btnCallback(node,eventType)
            store.purchase(DNP_GAME.iap.ios[2])
        end
        return btnCallback
    elseif node:getName()=="btn_dnt_3"  then
        local function btnCallback(node,eventType)
            store.purchase(DNP_GAME.iap.ios[3])
        end
        return btnCallback
    elseif node:getName()=="btn_dnt_4"  then
        local function btnCallback(node,eventType)
            store.purchase(DNP_GAME.iap.ios[4])
        end
        return btnCallback
    elseif node:getName()=="btn_dnt_5"  then
        local function btnCallback(node,eventType)
            store.purchase(DNP_GAME.iap.ios[5])
        end
        return btnCallback
    elseif node:getName()=="btn_dnt_6"  then
        local function btnCallback(node,eventType)
            store.purchase(DNP_GAME.iap.ios[6])
        end
        return btnCallback
    elseif node:getName()=="btn_dnt_7"  then
        local function btnCallback(node,eventType)
            store.purchase(DNP_GAME.iap.ios[7])
        end
        return btnCallback
    elseif node:getName()=="btn_dnt_8"  then
        local function btnCallback(node,eventType)
            store.purchase(DNP_GAME.iap.ios[8])
        end
        return btnCallback
    end
end



return HomeAdsView
