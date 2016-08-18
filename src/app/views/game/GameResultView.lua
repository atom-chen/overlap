
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

    Result_time1              = _("Result_time"),
    Result_combo1              = _("Result_combo"),
    Result_score1              = _("Result_score"),
    Result_high1               = _("Result_high"),
}

GameResultView.RESOURCE_FILENAME = "game.olap_result"


function GameResultView:onCreate()
    self:localLanguage()
end

--------------------
--无尽模式的
--
function GameResultView:prepareTravel(level)
    self.levelPanel:hide()
    self.randPanel:show()
    local shapes =  math.floor(level/10)-100 + 2
    self.avatar:setSpriteFrame(string.format("avatar-%d-on.png",shapes))
end


--------------------
--关卡模式的
--
function GameResultView:prepare(page,level,infos)
    self.levelPanel:show()
    self.randPanel:hide()

    self.curlevel = (page-1)*9 + level
    self.lbl_level:setString(page.."-"..level)

    --获得条件
    for v=1, 3 do
        self["Star"..v]:setString(infos[v])
    end
    --关已经获得的星级
    local gotstars =  LevelManager:getStageInfo(self.curlevel)
    for v=1, 3 do
        if gotstars[v]~=0 then
            self["gotstar"..v]:setSpriteFrame("sp-result-star.png")
        else
            self["gotstar"..v]:setSpriteFrame("sp-result-star-h.png")
        end
    end
    --本关卡物品
    local collection,star = LevelManager:getLevelClot(self.curlevel)
    self.collection = collection

    if self.collection then
        self.gotcolt:show()
        if CollectionManager:isCollectioned(self.collection) then
            self.gotcolt:setSpriteFrame("sp-result-collection.png")
        else
            self.gotcolt:setSpriteFrame("sp-result-collection-h.png")
        end
    else
        self.gotcolt:hide()
    end
end


function GameResultView:showTravelResult(score,time,combo,mode,endless)
    self:move(0,0)
    self:show()
    --结果
    self.Result_score1:setString(_("Result_score").."  "..score)
    self.Result_time1:setString(_("Result_time").."  "..time)
    self.Result_combo1:setString(_("Result_combo").."  "..combo)

    local record =  helper.getSloterData("record"..mode) or 0
    self.Result_high1:setString(_("Result_combo").."  "..record)
    
    
    --动画
    local aniTarget = {}
    aniTarget[1] = self.rpanel1
    aniTarget[2] = self.rpanel2
    aniTarget[3] = self.rpanel3
    aniTarget[4] = self.rpanel4
    local showdt = self:moveSeqAni(aniTarget)
    self:showButtonPanel(showdt+1,false)
    
    gameUtils.scaleShow(self.avatar,showdt+0.5)

    --解锁收集
    local newclt =   CollectionManager:starEndlessCollect(mode-2,score)
    if newclt then
        CollectionManager:showCollection(newclt)
    else
        --随机掉落
        local rclt =  CollectionManager:starRandEndlessCollect(mode-2,score)
        if newclt then
            CollectionManager:showCollection(newclt)
        end
    end
end


function GameResultView:showResult(stars,score,time,combo)
    self:move(0,0)
    self:show()

    --结果
    self.Result_score:setString(_("Result_score").."  "..score)
    self.Result_time:setString(_("Result_time").."  "..time)
    self.Result_combo:setString(_("Result_combo").."  "..combo)

    --条件结果
    local collection,star = LevelManager:getLevelClot(self.curlevel)
    for v=1, 3 do
        if stars[v] then
            self["getstar"..v]:setSpriteFrame("sp-result-star.png")
            self["Star"..v]:setTextColor(cc.c3b(112,112,112))
        else
            self["getstar"..v]:setSpriteFrame("sp-result-star-h.png")
            self["Star"..v]:setTextColor(cc.c3b(255,255,255))
        end

        if star == v then
            self["getcol"..v]:show()
            if stars[v] then
                self["getcol"..v]:setSpriteFrame("sp-result-collection.png")
            else
                self["getcol"..v]:setSpriteFrame("sp-result-collection-h.png")
            end
        else
            self["getcol"..v]:hide()
        end
    end

    
    --动画
    local aniTarget = {}
    aniTarget[1] = self.lbl_level
    aniTarget[2] = self.Result_score
    aniTarget[3] = self.Result_combo
    aniTarget[4] = self.Result_time
    aniTarget[5] = self.Panel_7
    aniTarget[6] = self.Panel_8
    aniTarget[7] = self.Panel_9
    
    local showdt = self:moveSeqAni(aniTarget)
    
    --收集星级面板
    self.panel_star:setOpacity(0)
    ac.execute(self.panel_star,ac.ccSeq(ac.ccDelay(showdt),ac.ccFadeTo(0.12,255)))
    
    --更新星数量
    local newstar,newclot,newopen =  LevelManager:updateStage(self.curlevel,stars)
    if newstar then
        for k, v in pairs(newstar) do
            local function onComplete()
                self["gotstar"..v]:setSpriteFrame("sp-result-star.png")
            end
            ac.execute(self["gotstar"..v],ac.ccSeq(
                ac.ccDelay((k-1)*0.3+showdt),ac.ccScaleTo(0.1,2),ac.ccCall(onComplete),ac.ccScaleTo(0.1,1)
            ))
        end
    end
    if newclot then
        local function onComplete()
            self["gotcolt"]:setSpriteFrame("sp-result-collection.png")
        end
        local function onComplete1()
            CollectionManager:showCollection(newclot)
        end
        ac.execute(self["gotcolt"],ac.ccSeq(
            ac.ccDelay(#newstar*0.3+showdt),ac.ccScaleTo(0.1,2),ac.ccCall(onComplete),ac.ccScaleTo(0.1,1),ac.ccCall(onComplete1)
        ))
    end

    local nextlv
    if self.curlevel + 1<=9*GAME_SCENE_COUNT then
        nextlv =   LevelManager:getStageInfo(self.curlevel + 1)
    end

    --显示按钮面板
    local showNext = ( nextlv and nextlv[4])
    local nextScene = self.curlevel%9 == 0 
    self:showButtonPanel(1+showdt,showNext,nextScene)
end


----------------------
--显示按钮面板动画
--
function GameResultView:showButtonPanel(showdt,showNext,nextScne)
    --按钮的显示动画
    gameUtils.scaleShow(self.btn_retry,showdt)
    gameUtils.scaleShow(self.btn_list,showdt)
    if showNext  then
        gameUtils.scaleShow(self.btn_next,showdt)
    else
        self.btn_next:hide()
    end
    gameUtils.fadeShow(self.panelAds,showdt)
    
    if nextScne then
    	AppViews:getView(Layers_.select):nextScene()
    end
end

----------------------
--顺序进场动画
--
function GameResultView:moveSeqAni(aniTarget)
    --按钮的显示动画

    local movedt = 0.1
    for key, target in pairs(aniTarget) do
        target:hide()
        local tx,ty = target:getPosition()
        target:setPositionX(-300)
        local function call()
            target:show()
        end
        ac.execute(target,ac.ccSeq(
            ac.ccDelay((key-1)*movedt),ac.ccCall(call),ac.ccEasing(ac.ccMoveTo(0.1,cc.p(tx,ty),5))
        ))
    end

    local showdt = (#aniTarget-1)*movedt
    
    return showdt
end


function GameResultView:onClick( path,node,funcName)
    if node:getName()=="btn_list"  then
        local function btnCallback(  node,eventType  )
            AppViews:getView(Layers_.gameController):gameClean()
            AppViews:getView(Layers_.gameController):hide()
            --
            local parentView =  AppViews:getView(Layers_.gameController).fromView
            local backTo = Layers_.prepare
            if parentView:getName() == Layers_.travel then
                backTo = Layers_.gameController
            end

            AppViews:fadeBack(backTo)
            self:hide()
        end
        return btnCallback
    elseif node:getName()=="btn_next"  then
        local function btnCallback(  node,eventType  )
            AppViews:splashMask(0.4)
            local function callback()
                AppViews:getView(Layers_.gameController):gameClean()
                local prepareView = AppViews:getView(Layers_.prepare)
                prepareView:nextLevel()
                prepareView:show()
                self:hide()

            end
            ac.ccDellayToCall(self,0.2,callback)

            --            AppViews:fadeTo(Layers_.result,Layers_.prepare,{call = callback})
        end
        return btnCallback
    elseif node:getName()=="btn_retry"  then
        local function btnCallback(  node,eventType  )
            AppViews:getView(Layers_.gameController):gameClean()
            local parentView =  AppViews:getView(Layers_.gameController).fromView
            parentView:startGame()
            self:hide()
        end
        return btnCallback
    elseif node:getName()=="btn_noads"  then
        local function btnCallback(  node,eventType  )
            
        end
        return btnCallback
    elseif node:getName()=="panelAds"  then
        local function btnCallback(  node,eventType  )
            AppViews:fadeTo(Layers_.result,"app.views.home.HomeAdsView")
        end
        return btnCallback
    end
end


return GameResultView
