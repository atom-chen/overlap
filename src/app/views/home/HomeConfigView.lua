
local HomeConfigView = class("HomeConfigView", cc.load("mvc").ViewBase)

HomeConfigView.RESOURCE_FILENAME = "home.home_config"
HomeConfigView.LOCALE_LANG_LABEL = {
    Sound         = _("Sound"),
    Lang         = _("Language"),
    Cloud           = _("ICloud"),
    Rate             = _("Rate"),
    Credit          = _("Credits"),
    Donation         = _("Donation"),
}

function HomeConfigView:onCreate()
    self:localLanguage()
    
    if helper.getSloterData(Sloters_.sound_off) then
        self.Sound:setString(_("Sound")..":".._("Off"))
    else
        self.Sound:setString(_("Sound")..":".._("On"))
    end
    
    if helper.getSloterData(Sloters_.icloud_off) then
        self.Cloud:setString(_("ICloud")..":".._("Off"))
    else
        self.Cloud:setString(_("ICloud")..":".._("On"))
    end
    
end

function HomeConfigView:touch(event)
end



function HomeConfigView:onClick( path,node,funcName)
    if node:getName()=="btn_back"  then
        local function btnCallback(node,eventType)
            audio.playSound(GAME_EFFECT[13])
            AppViews:fadeBack(self)
        end

        return btnCallback
    elseif node:getName()=="btn_lang"  then
        local function btnCallback(node,eventType)
            audio.playSound(GAME_EFFECT[13])
            AppViews:fadeTo(self,"app.views.home.ConfigLangView")
--            print(store.canMakePurchases())
--            local function call(result)
--            print("load")
--                dump(result)
----                store.purchase("overlap.noads")
--            end
--            store.loadProducts({"overlap.noads"}, call)
        end
       
        return btnCallback
    elseif node:getName()=="btn_credit"  then
        local function btnCallback(node,eventType)
            audio.playSound(GAME_EFFECT[13])
            AppViews:fadeTo(Layers_.config,"app.views.home.ConfigCreditView")
        end

        return btnCallback
    elseif node:getName()=="btn_rate"  then
        local function btnCallback(node,eventType)
            audio.playSound(GAME_EFFECT[13])
            if device.platform == device.PLATFORM.IOS then
                device.openURL(string.format(DNP_APP.storeUrl.ios, DNP_APP.id.ios))
            else
--                gamer:openStore()
            end
        end

        return btnCallback
    elseif node:getName()=="btn_donation"  then
        local function btnCallback(node,eventType)
            audio.playSound(GAME_EFFECT[13])
            AppViews:fadeTo(Layers_.config,"app.views.home.HomeAdsView")
        end

        return btnCallback
    elseif node:getName()=="btn_sound"  then
        local function btnCallback(node,eventType)
            audio.playSound(GAME_EFFECT[13])
            if helper.getSloterData(Sloters_.sound_off) then
            	audio.setSoundsVolume(1)
            	audio.playMusic(GAME_BGM)
                self.Sound:setString(_("Sound")..":".._("On"))
                helper.saveSloterData(Sloters_.sound_off,false)
            else
                audio.setSoundsVolume(0)
                audio.stopMusic()
                self.Sound:setString(_("Sound")..":".._("Off"))
                helper.saveSloterData(Sloters_.sound_off,true)
            end
        end

        return btnCallback
    end
end



return HomeConfigView
