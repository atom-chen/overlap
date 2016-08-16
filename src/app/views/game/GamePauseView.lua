
local GamePauseView = class("GamePauseView", cc.load("mvc").ViewBase)

GamePauseView.RESOURCE_FILENAME = "game.game_pause"

GamePauseView.LOCALE_LANG_LABEL = {
    Retry                    = _("Retry"),
    List                     = _("List"),
    Sound                    = _("Sound"),
    Continue                 = _("Continue"),
--    Result_time              = _("Result_time"),
--    Result_combo              = _("Result_combo"),
--    Result_score              = _("Result_score"),
}

function GamePauseView:onCreate()
    self:localLanguage()
    

    if helper.getSloterData(Sloters_.sound_off) then
        self.Sound:setString(_("Sound")..":".._("Off"))
    else
        self.Sound:setString(_("Sound")..":".._("On"))
    end
end



function GamePauseView:onClick( path,node,funcName)
    if node:getName()=="btn_list"  then
        local function btnCallback(node,eventType)
            AppViews:getView(Layers_.gameController):gameResume()
            AppViews:getView(Layers_.gameController):gameClean()
            AppViews:getView(Layers_.gameController):hide()

            local parentView =  AppViews:getView(Layers_.gameController).fromView
            local backTo = Layers_.prepare
            if parentView:getName() == Layers_.travel then
                backTo = Layers_.gameController
            end
            
            AppViews:fadeBack(backTo)
            self:hide()
            
        end
        return btnCallback
    elseif node:getName()=="btn_retry"  then
        local function btnCallback(node,eventType)
            AppViews:getView(Layers_.gameController):gameResume()
            AppViews:getView(Layers_.gameController):gameClean()
            local parentView =  AppViews:getView(Layers_.gameController).fromView
            parentView:startGame()
            self:hide()
        end
        return btnCallback
    elseif node:getName()=="btn_continue"  then
        local function btnCallback(node,eventType)
            AppViews:getView(Layers_.gameController):gameResume()
        end
        return btnCallback
    elseif node:getName()=="btn_sound"  then
        local function btnCallback(node,eventType)
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


function GamePauseView:showInfo(score,time,combo)
--    self.Result_score:setString(_("Result_score").."  "..score)
--    self.Result_time:setString(_("Result_time").."  "..time)
--    self.Result_combo:setString(_("Result_combo").."  "..combo)
end


return GamePauseView
