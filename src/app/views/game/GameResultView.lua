
local GameResultView = class("GameResultView", cc.load("mvc").ViewBase)

GameResultView.LOCALE_LANG_LABEL = {
    Star1             = _("NorScore"),
    Star2             = _("NorScore"),
    Star3             = _("NorScore"),
    Retry             = _("Retry"),
    List              = _("List"),
    Next              = _("Next"),
    Result_time              = _("Result_time"),
    Result_combo              = _("Result_combo"),
    Result_score              = _("Result_score"),
}

GameResultView.RESOURCE_FILENAME = "game.olap_result"


function GameResultView:onCreate()
    self:localLanguage()
end


function GameResultView:setStarInfo(page,level,infos)
    for v=1, 3 do
        self["Star"..v]:setString(infos[v])
    end
    self.lbl_level:setString(page.."-"..level)
    
    self.curlevel = (page-1)*9 + level
    
      --关已经获得的星级
    local gotstars =  LevelManager:getStageInfo(self.curlevel)
    for v=1, 3 do
        if gotstars[v]~=0 then
            self["gotstar"..v]:setSpriteFrame("sp-result-star.png")
        else
            self["gotstar"..v]:setSpriteFrame("sp-result-star-h.png")
        end
    end
end


function GameResultView:showResult(stars,score,time,combo)
    self:move(0,0)
    self:show()
    for v=1, 3 do
        if stars[v] then
            self["getstar"..v]:show()
            self["Star"..v]:setTextColor(cc.c3b(112,112,112))
        else
            self["getstar"..v]:hide()
            self["Star"..v]:setTextColor(cc.c3b(255,255,255))
        end
    end

    self.Result_score:setString(_("Result_score").."  "..score)
    self.Result_time:setString(_("Result_time").."  "..time)
    self.Result_combo:setString(_("Result_combo").."  "..combo)
    --更新星数量
   local newstar =  LevelManager:updateStage(self.curlevel,stars)
    if newstar then
   	    for k, v in pairs(newstar) do
            local function onComplete()
                self["gotstar"..v]:setSpriteFrame("sp-result-star.png")
   	    	end
            ac.execute(self["gotstar"..v],ac.ccSeq(
            ac.ccDelay((k-1)*0.3+1),ac.ccScaleTo(0.1,2),ac.ccCall(onComplete),ac.ccScaleTo(0.1,1)
            ))
   	    end
   end
   
end


function GameResultView:onClick( path,node,funcName)
    if node:getName()=="btn_list"  then
        local function btnCallback(  node,eventType  )
            AppViews:getView(Layers_.gameController):gameClean()
            gameUtils.transFadeOut(Layers_.result,Layers_.select)
        end
        return btnCallback
    elseif node:getName()=="btn_next"  then
        local function btnCallback(  node,eventType  )
            local function callback()
                AppViews:getView(Layers_.gameController):gameClean()
                local prepareView = AppViews:getView(Layers_.prepare)
                prepareView:nextLevel()
            end
            gameUtils.transFadeIn(Layers_.result,Layers_.prepare,{call = callback})
        end
        return btnCallback
    elseif node:getName()=="btn_retry"  then
        local function btnCallback(  node,eventType  )
            AppViews:getView(Layers_.gameController):gameClean()
            AppViews:getView(Layers_.prepare):startGame()
            self:hide()
        end
        return btnCallback
    elseif node:getName()=="btn_noads"  then
        local function btnCallback(  node,eventType  )
        end
        return btnCallback
    end
end


return GameResultView
