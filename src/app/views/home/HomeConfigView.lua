
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
        audio.setSoundsVolume(0)
        audio.setMusicVolume(0)
    else
        self.Sound:setString(_("Sound")..":".._("On"))
        audio.setSoundsVolume(1)
        audio.setMusicVolume(1)
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
            gameUtils.transFadeIn(Layers_.config,"app.views.home.ConfigCreditView")
        end

        return btnCallback
    elseif node:getName()=="btn_sound"  then
        local function btnCallback(node,eventType)
            if helper.getSloterData(Sloters_.sound_off) then
            	audio.setSoundsVolume(1)
            	audio.setMusicVolume(1)
                self.Sound:setString(_("Sound")..":".._("On"))
            else
                audio.setSoundsVolume(0)
                audio.setMusicVolume(0)
                self.Sound:setString(_("Sound")..":".._("Off"))
            end
        end

        return btnCallback
    end
end



return HomeConfigView
