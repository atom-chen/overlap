
local GameResultView = class("GameResultView", cc.load("mvc").ViewBase)

GameResultView.RESOURCE_FILENAME = "game.olap_result"

function GameResultView:onCreate()
    self.star = {}
    self.star[1] = self.star1
    self.star[2] = self.star2
    self.star[3] = self.star3
end


function GameResultView:setStarInfo(infos)
  for v=1, 3 do
        self["lbl_star_"..v]:setString(infos[v])
    end
end

function GameResultView:showResult(stars,score,time,combo)
    self:move(0,0)
    self:show()
    for v=1, 3 do
        if stars[v] then
            self.star[v]:setSpriteFrame("sp-result-star.png")
        else
            self.star[v]:setSpriteFrame("sp-result-star-h.png")
        end
    end
    
    self.lbl_score:setString(score)
    self.lbl_time:setString(time)
    self.lbl_combo:setString(combo)
end


function GameResultView:onClick( path,node,funcName)
    if node:getName()=="btn_home"  then
        local function btnCallback(  node,eventType  )
            AppViews:getView(Layers_.gameController):gameClean()
            gameUtils.transFadeOut(Layers_.result,Layers_.home)
        end
        return btnCallback
    elseif node:getName()=="btn_retry"  then
        local function btnCallback(  node,eventType  )
            AppViews:getView(Layers_.gameController):gameClean()
            AppViews:getView(Layers_.prepare):startGame()
            self:hide()
        end
        return btnCallback
    end
end


return GameResultView
