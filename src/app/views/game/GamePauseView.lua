
local GamePauseView = class("GamePauseView", cc.load("mvc").ViewBase)

GamePauseView.RESOURCE_FILENAME = "game.game_pause"

GamePauseView.LOCALE_LANG_LABEL = {
    Retry                    = _("Retry"),
    List                     = _("List"),
    Sound                    = _("Sound"),
    Continue                 = _("Continue"),
    Result_time              = _("Result_time"),
    Result_combo              = _("Result_combo"),
    Result_score              = _("Result_score"),
}

function GamePauseView:onCreate()
    self:localLanguage()
end



function GamePauseView:onClick( path,node,funcName)
    if node:getName()=="btn_list"  then
        local function btnCallback(  node,eventType  )
            AppViews:getView(Layers_.gameController):gameResume()
            AppViews:getView(Layers_.gameController):gameClean()
            AppViews:getView(Layers_.gameController):hide()
            gameUtils.transRight(Layers_.pause,Layers_.select)
        end
        return btnCallback
    elseif node:getName()=="btn_retry"  then
        local function btnCallback(  node,eventType  )
            AppViews:getView(Layers_.gameController):gameResume()
            AppViews:getView(Layers_.gameController):gameClean()
            AppViews:getView(Layers_.prepare):startGame()
            self:hide()
        end
        return btnCallback
    elseif node:getName()=="btn_continue"  then
        local function btnCallback(  node,eventType  )
            AppViews:getView(Layers_.gameController):gameResume()
        end
        return btnCallback
    elseif node:getName()=="btn_sound"  then
        local function btnCallback(  node,eventType  )
        end
        return btnCallback
    end
end


function GamePauseView:showInfo(score,time,combo)
    self.Result_score:setString(_("Result_score").."  "..score)
    self.Result_time:setString(_("Result_time").."  "..time)
    self.Result_combo:setString(_("Result_combo").."  "..combo)
end


return GamePauseView
