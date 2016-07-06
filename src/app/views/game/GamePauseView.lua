
local GamePauseView = class("GamePauseView", cc.load("mvc").ViewBase)

GamePauseView.RESOURCE_FILENAME = "game.game_pause"

function GamePauseView:onCreate()
end



function GamePauseView:onClick( path,node,funcName)
    if node:getName()=="btn_home"  then
        local function btnCallback(  node,eventType  )
            AppViews:getView(Layers_.gameController):gameClean()
            gameUtils.transRight(Layers_.pause,Layers_.home)
        end
        return btnCallback
    elseif node:getName()=="btn_retry"  then
        local function btnCallback(  node,eventType  )
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
    end
end


function GamePauseView:showInfo(score,time,combo)
    self.lbl_score:setString(score)
    self.lbl_time:setString(time)
    self.lbl_combo:setString(combo)
end


return GamePauseView
