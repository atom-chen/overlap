--------------------------------
-- @module ShapeControllerContriller
-- @extend ViewBase
-- @parent_module cc
-- ShapeControllerContriller is a combination of view and controller
local ShapeController = class("ShapeController", cc.load("mvc").ViewBase)

--$$$$$$$$$$$$$$$$$ DEFINITION $$$$$$$$$$$$$$$

local GameView       = import("..views.GameView")
local GameHUDView    = import("app.views.game.GameHUDView")
local GameModel      = import("..models.GameModel")
local ShapeModel     = import("..models.ShapeModel")
local ShapeSprite    = import("..views.ShapeSprite")
local Level          = import("app.data.Level")

ShapeController.TIME_TO_WARING = 5       --进入警告倒计时

local actionTargets
local actionManager = cc.Director:getInstance():getActionManager()
--$$$$$$$$$$$$$$$$$ GET & SET $$$$$$$$$$$$$$$

function ShapeController:getGameMode()
    return self.gamemode
end

--true 计时模式，false 不计时模式
function ShapeController:isTimeMode()
    return self.timeMode
end


function ShapeController:isNoTimeModeEnd()
    if self.levelStar1[1]~=0 then
        return self:getScore() >= self.levelStar1[1] or self.gameTime >= self.levelStar1[3]
    else
        return self.maxPerfect >= self.levelStar1[2] or self.gameTime >= self.levelStar1[3]
    end
end


function ShapeController:getIncreaseTime()
    if self:isTimeMode() then
        local p = self.funParam
        return self.funScore(self:getScore(),p[1],p[2],p[3])
    else
        return 0
    end
end

function ShapeController:completeStar(star)
    if self:isTimeMode() then
        if self:getScore()>=star[1] and self.maxPerfect >= star[2] then
            return true
        end
    else
        if star[1] ~= 0 then
            if self.gameTime <= star[3] and  self:getScore() >= star[1] then
                return true
            end
        elseif star[2] ~= 0 then
            if self.gameTime <= star[3]  and self.maxPerfect >= star[2] then
                return true
            end
        end
    end
end

function ShapeController:leveStars()
    local st = {}
    if not self.levelStar3.hasGet and self:completeStar(self.levelStar3) then
        st[3] = 1
        self.levelStar3.hasGet = true
    end
    if not self.levelStar2.hasGet and self:completeStar(self.levelStar2) then
        st[2] = 1
        self.levelStar2.hasGet = true
    end
    if  not self.levelStar1.hasGet and self:completeStar(self.levelStar1) then
        st[1] = 1
        self.levelStar1.hasGet = true
    end
    return st
end


--------------------------
--更新时间并且更新hud是显示时间
--
--ani
function ShapeController:updateTime(dt,ani)
    self:setGameTime(dt)
    if ani and dt ~= 0 then
        self.gameHUD:getTime(math.round(self.gameTime),dt)
    else
        self.gameHUD:updateTime(math.round(self.gameTime))
    end

end

function ShapeController:setGameTime(dt)
    self.gameTime = self.gameTime + dt
    if self:isTimeMode()  then
        if self.gameTime<= 0 then
            self.gameTime = 0
        end
        if  self.gameTime >  self.maxTime then
            self.gameTime = self.maxTime
        end
    end
end


----------------
--
--
--@function [parent=ShapeController] getScore
function ShapeController:getScore()
    return crypto.deConfuse(self.score_)
end

--$$$$$$$$$$$$$$$$$ LOGIC  VIEWBASE $$$$$$$$$$$$$$$

----------------
--游戏初始化逻辑
--
--@function [parent=#ShapeController] onCreate
function ShapeController:onCreate()
    self.gameModel = GameModel:create()
    self.gameView = GameView:create(self:getApp(),Layers_.game)
        :addTo(self)

    self.gameHUD = GameHUDView:create(self:getApp(),Layers_.hud)
        :addTo(self)

    self.gameView:setModel(self.gameModel)
end



----------------
--游戏的控制逻辑
--
--@function [parent=#src.app.controllers.ShapeController] registerTouchEvent
function ShapeController:touch(event)

    if event.name == "began" then
        --需要返回true
        local touchIdex = self.gameView:getIndexByPosition(event.x,event.y)
        if touchIdex  then
            --若是教程
            if self.teachOrder then
                if self.touchOrder ~= touchIdex then
                    return false
                else
                    self.gameView:onOption(touchIdex)
                    self.hand:setVisible(false)
                    local function call()
                        self.teachStep = self.teachStep + 1
                        self:teachHand()
                    end
                    ac.ccDellayToCall(self,0.2,call)
                end
            end

            local result,isWrong = self.gameView:onOption(touchIdex)

            if result then
                if isWrong then
                    --combo
                    self.combo = 0
                    --减时间
                    if  self.wrongSelect ~= 0 then
                        self:updateTime(-1,true)
                        --                        self:updateTime(-self.wrongSelect,true)
                        --                        self.gameHUD:reduceTime( self.wrongSelect)
                    end
                    self.wrongSelect  = self.wrongSelect +1

                elseif not self.timeout then
                    self.combo = self.combo +1
                    self.gameCombo = self.gameCombo + 1
                    if self.combo >= 4 and self.combo <= 8 then
                        local at = 1
                        self:updateTime(at,true)
                        --                        self.gameHUD:creaseTime(at)
                    end
                end
            end
        end
        return true
    elseif event.name == "moved" then
    elseif event.name == "ended" then
    end

end


function ShapeController:update(dt)
    if self:isTimeMode() then
        if self.gameTime >= 0  then
            self:updateTime(-dt)

            if self.gameTime <= ShapeController.TIME_TO_WARING and  not self.tickTime then
                --时间警告
                self.tickTime = 1
                --                self.tickTime = audio.playSound(GAME_EFFECT[10])
                local function playcall()
                    self.tickTime = 1
                    --                    self.tickTime = audio.playSound(GAME_EFFECT[10])
                end

                self:addTimer("PLAY_TICK_EFFFECT",10,10000,playcall)

                self.gameHUD:startREC()
            end

            if self.gameTime <= 0 then
                --游戏时间到
                self.outEffect = audio.playSound(GAME_EFFECT[12])
                self:disCountdown()
                self.timeout = true
                if self.tickTime  then
                    --                    audio.stopSound(self.tickTime)
                    self.tickTime = nil
                    self:removeTimer("PLAY_TICK_EFFFECT")
                    self.gameHUD:stopREC()
                end
            end
        end
    else
        --不计时模式
        self:updateTime(dt)
    end
end





--$$$$$$$$$$$$$$$$$ LOGIC  SHAPECONTROLLER $$$$$$$$$$$$$$$

function ShapeController:initRandSkill(mode)
    local function opened(level)
        local infos =  LevelManager:getStageInfo(level)
        local hasstar
        for s=1, 3 do
            if infos[s]~= 0 then
                hasstar = true
            end
        end
        return hasstar
    end

    local skills = {{0}}
    local skArray = Level.randSkills[mode]

    for _, _skary in pairs(skArray) do
        local open = false
        for key, sk in pairs(_skary) do
            if key == 1 then
                open = opened(sk)
            elseif open then
                table.insert(skills,sk)
            end
        end
    end

    return skills
end

function ShapeController:initLevelData(level)
    local function formatSkill(skill)
        local _skArray = {}
        for _, sks in pairs(skill) do
            local temp = {}
            for _, v in pairs(sks) do
                temp[v] = v
            end
            table.insert(_skArray,temp)
        end
        return _skArray
    end

    local lvdata = Level.data[level]
    self.levelScene = lvdata[1]
    self.levelCount = lvdata[2]
    if lvdata[3] then
        self.levelSkill = formatSkill(lvdata[3])
        if level>1000 then
            self.obsmode = GAME_ENDLESS_MODE.endless
        else
            self.obsmode = nil
        end
    else
        local sks = self:initRandSkill(self.levelCount-2)
        self.levelSkill = formatSkill(sks)
        self.obsmode = GAME_ENDLESS_MODE.random
    end
    self.levelStar1 = lvdata[4]
    self.levelStar1.hasGet = false
    self.levelStar2 = lvdata[5]
    self.levelStar2.hasGet = false
    self.levelStar3 = lvdata[6]
    self.levelStar3.hasGet = false
    self.levelTime  = lvdata[7]

    self.funParam   = lvdata[8]
    self.funScore   = Level.timeFunction
end



function ShapeController:showSkillExplain(type,callback)
   local skillView =  AppViews:addViewByName(string.format("app.views.skills.SkillExplain%dView",type))
    skillView:setCallBack(callback)
end


----------------
--游戏开始
--
--@function [parent=#ShapeController] gameStart
function ShapeController:gameStart(level)
    local  function  onStartCallback()
        self:onGameStart(level)
    end
    
    --显示技能简结
    local skteach = Level.skTeach[level]
    if skteach then
        for k, teachs in pairs(skteach) do
            local callb = nil
            if k == 1 then
                callb =  onStartCallback
            end
            self:showSkillExplain(teachs,callb)
        end
        
        self.gameView.white:show()
    else
        self:onGameStart(level)
    end
end

function  ShapeController:onGameStart(level)
    --统计游戏局数
    local played =   helper.getSloterData(Sloters_.game_layed) or 0
    helper.saveSloterData(Sloters_.game_layed,played+1)

    LevelManager:setLevel(level)

    self:initLevelData(level)

    --游戏难度
    self.gameLevel = level
    self.gamemode    = self.levelCount      --块数
    self.score_      = crypto.confuse(0)    --积分
    self.gameTime    =   self.levelTime     --游戏时间
    self.timeMode    =  self.gameTime ~= 0  --计时模式
    self.maxTime     =   self.levelTime     --游戏事件

    self.timeout     = false                --时间到，时间到了还可以继续游戏的
    self.gameMis     = 0                    --失误次数
    self.gameCombo   = 0                    --大combo
    self.perfectRows = 0                    --连续完美得分
    self.maxPerfect  = 0                    --最大完美得分

    self.gameModel:setMode(self.gamemode)
    self.gameView:setMode(self.gamemode)
    self.gameHUD:initHUD()
    self:updateTime(0)

    local function startCall()
        self:createStage()
    end
    ac.ccDellayToCall(self,0.5,startCall)

    self.gameHUD:runAnimation("show")
    self.gameView:runAnimation("show")
end

----------------
--生成一个stage
--
--@function [parent=ShapeController] createShapes
function ShapeController:createStage()
    if self.gameLevel == 1 and self:getScore()<=2 then
        self:createTeachStage()
    else
        if self.teachOrder then
            self:endTeach()
            local function call()
                self:createLevelStage()
            end
            ac.ccDellayToCall(self,1,call)
        else
            self:createLevelStage()
        end
    end
end
----------------
--生成一个stage
--
--@function [parent=ShapeController] createShapes
function ShapeController:createLevelStage()
    audio.playSound(GAME_EFFECT[20])

    self.wrongSelect  = 0         --选择错误选项次数
    self.combo        = 0         --连续对的块数，音乐

    local sIndex
    if  self.obsmode == GAME_ENDLESS_MODE.random and self:getScore()<=4 then
        local isKill= true
        while isKill do
            sIndex = math.random(1,#self.levelSkill)
            local stageSk  = self.levelSkill[sIndex]
            if table.nums(stageSk) ==1 then
                isKill= false
            end
        end
    else
        sIndex = math.random(1,#self.levelSkill)
    end
    self.gameView:creatStage(self.levelSkill[sIndex])

    local function call()
        self:enTouch()
        self:enCountdown()
    end
    ac.ccDellayToCall(self,0.5,call)
    --显示技能图标
    self.gameHUD:updateSkill(self.levelSkill[sIndex])
end


----------------
--生成一个教学stage
--
--@function [parent=ShapeController] createTeachStage
function ShapeController:createTeachStage()
    audio.playSound(GAME_EFFECT[20])

    self.wrongSelect = 0

    self.hand = display.newSprite("#teach-hand.png")
        :addTo(self)
    self.hand:setVisible(false)

    self.gameHUD:updateScore(self:getScore())
    --选择个数
    local anit,order = self.gameView:creatTeachStage(self.levelSkill[1])
    local function call()
        self:enTouch()
        self:teachHand()
    end
    ac.ccDellayToCall(self,anit,call)

    self.teachOrder = order
    self.teachStep = 1
end

----------------
--显示教学的手
--
--@function [parent=ShapeController] teachHand
function ShapeController:teachHand()
    if self.teachStep> #self.teachOrder then
        return
    end
    if  self.teachOrder then
        for k, v in pairs(self.teachOrder) do
            if v == self.teachStep then
                self.touchOrder = k
                local pos = self.gameView:getPositionByIndex(k)
                self.hand:setPosition(pos.x+20,pos.y-90)
            end
        end
    end
    self.hand:setVisible(true)
end


----------------
--显示教学的手
--
--@function [parent=ShapeController] teachHand
function ShapeController:endTeach()
    self.teachOrder = nil
    self.hand:removeSelf()
    self.hand = nil
end


----------------
--在时间内完成当前的图案
--
--@function [parent=ShapeController] stageClear
function ShapeController:stageClear()
    if self.wrongSelect == 0 then
        self.perfectRows = self.perfectRows + 1

        if self.maxPerfect < self.perfectRows then
            self.maxPerfect = self.perfectRows
        end
        self.gameHUD:showPerfect(self.perfectRows)
    else
        self.perfectRows = 0
    end
    --游戏失误次数
    self.gameMis = self.gameMis + self.wrongSelect

    --完成关卡,场景动效果
    self.gameView:stageClear()
    self.gameHUD:hideSkill()
    local star = self:leveStars()
    if star and next(star)  then
        self.gameHUD:getStar(star)
    end

    --更新游戏时间分数
    self:updateTime(self:getIncreaseTime(),true)
    self.gameHUD:updateScore(self:getScore())
    --如果进入时间警告时候，停止警告
    if self.tickTime and self.gameTime > ShapeController.TIME_TO_WARING  then
        --        audio.stopSound(self.tickTime)
        self.tickTime = nil
        self:removeTimer("PLAY_TICK_EFFFECT")
        self.gameHUD:stopREC()
    end
    --过关清理场景
    local function cleanCallback()
        self.gameView:stageCleanUp()

        if  self:isTimeMode() then
            --计时模式
            self:createStage()
        else
            --不计时模式
            if self:isNoTimeModeEnd() then
                --结束
                self:gameOver()
            else
                --继续
                self:createStage()
            end
        end
    end
    ac.ccDellayToCall(self,1.0,cleanCallback)
end

----------------
--
--
--@function [parent=ShapeController] enCountdown
function ShapeController:enCountdown()
    self:enUpdate()
end

----------------
--
--
--@function [parent=ShapeController] disCountdown
function ShapeController:disCountdown()
    self:disUpdate()
end


function ShapeController:updateRecord()
    local record =  helper.getSloterData("record"..self.obsmode..self.gamemode) or 0
    local score = self:getScore()
    if score >record then
        helper.saveSloterData("record"..self.obsmode..self.gamemode,score)
        local rankId =  gameUtils.getRankId(self.obsmode,self.gamemode)
        gameUtils.updatePlayerScoreData(rankId,score)
    end
end

----------------
--
--
--@function [parent=ShapeController] stageFinish
function ShapeController:stageFinish()
    self:disTouch()
    self:disCountdown()
    if not self.timeout then
        self.score_ = crypto.confusePlus(self.score_, 1)
        if not LevelManager:isLevelMode() then
            self:updateRecord()
        end
    end
    --    --如果当前分数大于记录，保存一下
    --    local data = helper.getSloterData(Sloters_.shapeInfo)
    --    --分数
    --    if data and self:getScore() > crypto.deConfuse(data[self.gamemode][1]) then
    --        self.newrecord = true
    --        data[self.gamemode][1] = self.score_
    --        --解锁
    --        if self.gamemode +1 <=8 and not data[self.gamemode+1] and self:getScore()>=STAGE_MODE_UNLOCKE[self.gamemode+1] then
    --            data[self.gamemode+1] = {crypto.confuse(0),0}
    --            helper.setUserSloterData(Sloters_.last_mode,self.gamemode+1)
    --            helper.setUserSloterData(Sloters_.unlock_new,self.gamemode+1)
    --        end
    --        helper.setUserSloterData(Sloters_.shapeInfo,data)
    --    end

    return self.timeout
end


----------------
--倒计时结束后，完成的最后一个关卡
--
--@function [parent=ShapeController] lastStageEnd
function ShapeController:lastStageEnd()
    if self.outEffect then
        audio.stopSound(self.outEffect)
        self.outEffect = nil
    end
    self.gameView:stageClear()
    self:disTouch()
    local function onComplete()
        audio.playSound(GAME_EFFECT[21])
        self:gameOver()
    end
    local action = ac.ccSeq(ac.ccDelay(1.5),ac.ccCall(onComplete))
    ac.execute(self,action)
    --统计
    self:gameSatits()
end


----------------
--游戏结束，停掉场景等
--
--@function [parent=ShapeController] gameOver
function ShapeController:gameOver()
    AppViews:splashMask(0.4)

    local function call()
        self:hide()
        ac.stopTarget(self)
        ac.stopTarget(self.gameView)

        if LevelManager:isLevelMode() then
            local stars = {}
            stars[1] = self.levelStar1.hasGet
            stars[2] = self.levelStar2.hasGet
            stars[3] = self.levelStar3.hasGet
            AppViews:getView(Layers_.result):showResult(stars,self:getScore(),math.ceil(self.gameTime),self.maxPerfect)
        else
            self:submitScore()
            AppViews:getView(Layers_.result):showTravelResult(self:getScore(),math.ceil(self.gameTime),self.maxPerfect,self.gamemode,self.obsmode)
        end
    end
    ac.ccDellayToCall(self,0.2,call)

    if self.tickTime  then
        --        audio.stopSound(self.tickTime)
        self.tickTime = nil
        self:removeTimer("PLAY_TICK_EFFFECT")
        self.gameHUD:stopREC()
    end

    self:disCountdown()
    self:disTouch()

    if  self.gameLevel > 3  then
        local function vungleCall(result)
            if result == "ready" then
                local function callback()
                end
                gamer:playVungleAd(callback)
            end
        end
        gamer:isVungleReady(vungleCall)
    end
end

----------------
--
--
--@function [parent=ShapeController] gameClean
function ShapeController:gameClean()
    self.gameView:gameCleanUp()

    if self.tickTime  then
        --        audio.stopSound(self.tickTime)
        self.tickTime = nil
        self:removeTimer("PLAY_TICK_EFFFECT")
        self.gameHUD:stopREC()
    end

    if self.teachOrder then
        self:endTeach()
    end

    self:disCountdown()
    self:disTouch()

    ac.stopTarget(self)
    ac.stopTarget(self.gameView)
    ac.stopTarget(self.gameHUD)
    
    self.gameHUD:hideSkill()
end



function ShapeController:gameSatits()
--
--    --统计错误次数
--    self.gameMis = self.gameMis + self.wrongSelect
--
--    --统计数据
--    local data = helper.getUserSloterData(Sloters_.shapeInfo)
--    --解锁
--    if self.gamemode +1 <=8 and not data[self.gamemode+1] and self:getScore()>=STAGE_MODE_UNLOCKE[self.gamemode+1] then
--        data[self.gamemode+1] = {crypto.confuse(0),0}
--        helper.setUserSloterData(Sloters_.last_mode,self.gamemode+1)
--        helper.setUserSloterData(Sloters_.unlock_new,self.gamemode+1)
--    end
--    --分数
--    if self:getScore() > crypto.deConfuse(data[self.gamemode][1]) then
--        self.newrecord = true
--        data[self.gamemode][1] = self.score_
--    end
--    data[self.gamemode][2] = data[self.gamemode][2]+1
--
--    helper.setUserSloterData(Sloters_.shapeInfo,data)
--
--    analytic:logEventWithParameters("gameend",{score=self:getScore(),mode = self.gamemode,wrongs = self.gameMis,combo = self.gameCombo/self:getScore()})
end




----------------
--
--
--@function [parent=ShapeController] gamePause
function ShapeController:gamePause()
    local pauseView = AppViews:getView(Layers_.pause)
    pauseView:show()
    pauseView:move(0,0)
    pauseView:showInfo(self:getScore(),math.round(self.gameTime),self.maxPerfect)

    self:hide()
    self:disCountdown()
    actionTargets = actionManager:pauseAllRunningActions()
end


----------------
--
--
--@function [parent=ShapeController] gameResume
function ShapeController:gameResume()
    AppViews:getView(Layers_.pause):hide()
    self:show()
    self:enCountdown()
    actionManager:resumeTargets(actionTargets)
    actionTargets = nil
end


function ShapeController:submitScore()
    --提交排行榜
    if self.obsmode == GAME_ENDLESS_MODE.endless then
        --提交苹果排行榜
        local function callback()
        end
        gamer:submitScore(self:getScore(),self.gamemode-3,callback)
    end

    local myRankId = gameUtils.getRankId(self.obsmode,self.gamemode)
    local score_ = self:getScore()
    local rank = {
        appId = DNP_APP.id.dnp,
        rankId = myRankId,
        key = device:getDeviceUid(),
        score = score_,
    }
    ActionExecutor:execute(msgdef.RankCommit,rank)
end


return ShapeController