--------------------------------
-- @module GameView
-- @extend ViewBase
-- @parent_module cc
-- GameView is a combination of view and controller
--local GameView = class("GameView", function() return require("fmw.mvc.ViewBase").init() end)
local GameView = class("GameView", cc.load("mvc").ViewBase)
GameView.RESOURCE_FILENAME = "game.olap_game.lua"

GameView.LOCALE_LANG_LABEL = {
    Touch           = _("Touch"),
}


local ShapeSprite = import(".ShapeSprite")

ShapeSprite.START_ANI = {
    NONE = 1,
    ORDER = 2,
}

ShapeSprite.WRONG_STOP_TIME = 1.5

ShapeSprite.SHAPE_MOVE_TO_TIME = 0.2
ShapeSprite.SHAPE_FADE_OUT_TIME = 0.15
ShapeSprite.LAST_AUTO_RESTOR_DELAYTIEM = 0.6
ShapeSprite.TIME_TO_NEXT_STAGE = 0.4

ShapeSprite.TAG_LIGHT_LAYER  = 121
ShapeSprite.TAG_SHAPE_LAYER  = 123
ShapeSprite.TAG_EFFECT_LAYER = 124
ShapeSprite.TAG_OPT_LAYER    = 125

GameView.OPT_ITEM = {}
GameView.OPT_ITEM[3] = {3}
GameView.OPT_ITEM[4] = {4}
GameView.OPT_ITEM[5] = {3,2}
GameView.OPT_ITEM[6] = {3,3}
GameView.OPT_ITEM[7] = {4,3}
GameView.OPT_ITEM[8] = {4,4}


GameView.TOUCHTIME = {7,6,4,2.5,2,1.5}



function GameView:onCreate()
    self:localLanguage()

    local gridPos = self.grid:convertToWorldSpace(cc.p(0,0))
    ARCHIVE_HEIGHT = (gridPos.y+GRID_BORDER)/display.height

    self.zOrder = 10
    self.oPos = cc.p(gridPos.x+GRID_BORDER,gridPos.y+GRID_BORDER)

    self.optbackgrid:setContentSize(display.size)
    self.optgrid:setContentSize(display.size)

    self.bar1 = helper.progressTimer(self.sb1,cc.p(0,0))
    self.bar2 = helper.progressTimer(self.sb2,cc.p(1,1))

    self.Touch:setOpacity(0)
end


function GameView:setModel(model)
    self.model = model
end

------------
--设置游戏难度
--
--@function [parent=#GameView] setMode
function GameView:setMode(mode)
    self.counts_ = mode
    self:setOption()

    self.touchdt_ = GameView.TOUCHTIME[mode-2]

    display.loadSpriteFrames("Resource/atlas/shape-entity.plist","Resource/atlas/shape-entity.png")
    display.loadSpriteFrames("Resource/atlas/shape-border.plist","Resource/atlas/shape-border.png")
    display.loadSpriteFrames("Resource/atlas/shape-shadow.plist","Resource/atlas/shape-shadow.png")
    display.loadSpriteFrames("Resource/atlas/ui-game.plist","Resource/atlas/ui-game.png")
end


-------------------------------
--根据模式不同初始化选择区域
--
--@function [parent=#GameView] setOption
function GameView:setOption()
    self.position = {}
    local opts = GameView.OPT_ITEM[self.counts_]
    self.optback = {}
    local optwidth = 155
    if opts[1] == 3 then
        optwidth = 178
    end
    local oc = 1
    for k, line in pairs(opts) do
        local offX =  (display.width - optwidth*line )/2
        for v=1, line  do
            local x = offX + (v-0.5)*optwidth
            local y
            if #opts == 1 then
                y  = 219+25
            else
                y = 178 + (k-1)*155
            end

            local optmask = display.newSprite("#sp-game-opt-back-white.png")
                :move(x,y)
                :addTo(self.optbackgrid)
            local opt = display.newSprite("#sp-game-opt-back.png")
                :move(x,y)
                :addTo(self.optbackgrid)

            self.optback[#self.optback+1] = opt
            self.position[#self.position+1] = cc.p(x,y)
            opt:setOpacity(0)

            ac.execute(opt,ac.ccSeq(cc.DelayTime:create(oc*0.1),ac.ccFadeTo(0.15,200)))
            oc = oc+1
        end
    end
end



function GameView:getIndexByPosition(px,py)
    local width = GRID_OPT_WIDTH/2 - 10
    for v=1, self.counts_ do
        local c = self.position[v]

        if px>c.x-width and px<c.x+width
            and py>c.y-width and py<c.y+width  then
            return v
        end
    end
end

function GameView:getPositionByIndex(index)
    return self.position[index]
end


-----------
--生成一个关卡
--
--@function [parent=#GameView] creatStage
function GameView:creatStage(skill)
    --最终图形
    local models = self.model:creatStage()
    self:createAchieve(models,ShapeSprite.START_ANI.NONE,skill)

    --打乱操作界面
    local models,opts = self.model:createOptions()
    self:createOptions(models,opts,skill)

    self.effect = 1
    self:reset3DModel()
end

function GameView:reset3DModel()
    self.on3dMode = false
    self.bar1:setPercentage(0)
    self.bar2:setPercentage(0)

    self.btn_touch:setContentSize({width = 0, height = 60})
    self.dcount = 60
end

-----------
--生成一个教学关卡
--
--@function [parent=#GameView] creatTeachStage
function GameView:creatTeachStage(skill)
    --最终图形
    local models = self.model:creatStage()
    local dt = self:createAchieve(models,ShapeSprite.START_ANI.ORDER,skill)

    local models,opts = self.model:createOptions()
    --打乱操作界面
    local function call()
        self:createOptions(models,opts,skill)
    end
    ac.ccDellayToCall(self,dt,call)
    self.effect = 1
    return dt,opts
end


-----------
--游戏展示区域
--
--@function [parent=#GameView] createAchieve
function GameView:createAchieve(models,ani,skill)
    ani = ani or ShapeSprite.START_ANI.NONE

    local last = self.grid:getChildByTag(ShapeSprite.TAG_SHAPE_LAYER)
    if last then
        last:removeSelf()
    end
    self.grid:rotate(0)
    if skill[SKILL_TYPE.ROTATY_RIGHT] then
        self.grid:rotate(-90)
    elseif skill[SKILL_TYPE.ROTATY_LEFT] then
        self.grid:rotate(90)
    end

    local lyShape = display.newNode()
    self.grid:addChild(lyShape)
    lyShape:setTag(ShapeSprite.TAG_SHAPE_LAYER)

    lyShape:setPositionX(600)
    ac.execute(lyShape,ac.ccMoveTo(0.18,cc.p(0,0)),{easing = 5})

    local skShape = display.newNode()
    self.grid:addChild(skShape)
    skShape:setTag(ShapeSprite.TAG_EFFECT_LAYER )

    self.shapes = {}

    if ani == ShapeSprite.START_ANI.NONE then
        local hideShape  --随机隐藏一块
        local sameShape  --相同颜色的快
        if skill[SKILL_TYPE.HIDEN] then
            hideShape = math.random(1,#models)
        end
        if   skill[SKILL_TYPE.SAME] then
            sameShape = math.randsub(2,#models)
        end
        for k, model in pairs(models) do
            local shape = ShapeSprite:create(model)
                :move(GRID_BORDER,GRID_BORDER)
                :addTo(lyShape)
            shape:setTag(model:getColor())
            table.insert(self.shapes,shape)

            if skill[SKILL_TYPE.BLINK] then
                shape:blink()
            end
            if skill[SKILL_TYPE.HIDEN] then
                if hideShape == k then
                    shape:hideShape()
                end
            end
            if skill[SKILL_TYPE.SAME] then
                if k==sameShape[1] then
                    local rcolor = models[sameShape[2]].color
                    shape:setOutColor(rcolor)
                end
            end
        end

        if skill[SKILL_TYPE.HALF] then
            self.cloud = nil
            self.cloud = sp.SkeletonAnimation:create("Resource/spine/prototype.json","Resource/spine/prototype.atlas",1)
            self.cloud:setSlotsToSetupPose()
            self.cloud:setPosition(GRID_BORDER*(0.5+math.random(1,2)-1),GRID_BORDER*(0.5+math.random(1,2)-1))
            self.cloud:addAnimation(0,"animation", true)

            skShape:addChild(self.cloud)
            self.cloud:setOpacity(0)
            ac.execute(self.cloud,ac.ccFadeTo(0.5,255))
        end

    elseif ani == ShapeSprite.START_ANI.ORDER then
        local n=0
        for _, model in pairs(models) do
            local function onComplete()
                local shape = ShapeSprite:create(model,ShapeSprite.SHAPE_MODE.SHAPE_BORDER)
                    :move(GRID_BORDER,GRID_BORDER)
                    :addTo(lyShape)
                shape:setTag(model:getColor())
                table.insert(self.shapes,shape)
                shape:setScale(2)

                local action = ac.ccEasing(ac.ccScaleTo(0.5,1),"ELASTICOUT")
                ac.execute(shape,action,action)
            end
            local action = ac.ccSeq(ac.ccDelay(n*0.6),ac.ccCall(onComplete))
            ac.execute(self,action)
            n = n+1
        end
        return n * 0.6
    end


    --    self:show3DModel()
end

-----------
--游戏操作区域
--
--@function [parent=#GameView] createOptions
function GameView:createOptions(models,orders,skill)
    --选项
    self.opts = {}
    self.orders = orders
    local colorSeq   --颜色序列
    if   skill[SKILL_TYPE.SELECT_WORD] or  skill[SKILL_TYPE.SELECT_COLOR] then
        colorSeq = math.randsub(#models,#models)
    end
    for v=1, #models do
        local opt =  ShapeSprite:create(models[orders[v]],ShapeSprite.SHAPE_MODE.SHAPE,skill)
            :move(self.position[v])
            :addTo(self.optgrid)
        opt:setTag(123+v)

        opt:setScale(OPT_GRID_SCALE)
        opt:shapeFadeIn(0.15)
        self.opts[v] = opt

        self.optback[v]:show()

        if   skill[SKILL_TYPE.SELECT_WORD] then
            opt:setTextColor(models[colorSeq[v]].color)
        end
        if  skill[SKILL_TYPE.SELECT_COLOR] then
            opt:setTextName(models[colorSeq[v]].color)
        end
    end
end


-----------
--游戏操作
--
--@function [parent=#GameView] onOption
function GameView:onOption(index)
    local select,correct,last = self.model:optChoosen(index)

    if select then
        self:goShapeGo(index,correct)
        local gamend = self:checkStageEnd()
        if gamend then
            local timeout = AppViews:getView(Layers_.gameController):stageFinish()
            if timeout then
                local function call()
                    AppViews:getView(Layers_.gameController):lastStageEnd()
                end
                local t = ShapeSprite.SHAPE_MOVE_TO_TIME+ShapeSprite.TIME_TO_NEXT_STAGE
                if self.on3dMode then
                    t = t+0.5
                end
                ac.ccDellayToCall(self,t,call)
            else
                local function call()
                    AppViews:getView(Layers_.gameController):stageClear()
                end
                local t = ShapeSprite.SHAPE_MOVE_TO_TIME+ShapeSprite.TIME_TO_NEXT_STAGE
                if self.on3dMode then
                    t = t+0.5
                end
                ac.ccDellayToCall(self,t,call)
            end
        end
    end

    return select,correct
end

-----------
--游戏操作
--
--@function [parent=#GameView] checkStageEnd
function GameView:checkStageEnd()
    return self.model:stageEnd()
end

-----------
--清除上一个的数据
--
--@function [parent=#GameView] checkEnd
function GameView:stageCleanUp()
    self.zOrder = 10
    self.grid:stopAllActions()
    local result = self.model:gameClear()
    --清除

    for _, child in pairs(self.grid:getChildren()) do
        child:removeSelf()
    end
    for _, child in pairs(self.optgrid:getChildren()) do
        child:removeSelf()
    end
    self.opts = nil
    if self.cloud then
        self.cloud = nil
    end
end

-----------
--清除游戏数据
--
--@function [parent=#GameView] checkEnd
function GameView:gameCleanUp()
    self:stageCleanUp()
    for _, child in pairs(self.optbackgrid:getChildren()) do
        child:removeSelf()
    end
end


-----------
--完成一个管卡
--
--@function [parent=#GameView] stageClear
function GameView:stageClear()
    audio.playSound(GAME_EFFECT[9])
    for key, shape in pairs(self.shapes) do
        shape:fadeLight()
    end

    local lyShape = self.grid:getChildByTag(ShapeSprite.TAG_SHAPE_LAYER)
    ac.execute(lyShape,ac.ccSeq(ac.ccDelay(0.7),
        ac.ccEasing(ac.ccMoveTo(0.25,cc.p(-900,0)),7),ac.ccRemoveSelf()
    ))

    --加地光
    local models = self.model:getShapes()
    --    local layer = self.grid:getChildByTag(ShapeSprite.TAG_LIGHT_LAYER)

    --    for _, model in pairs(models) do
    --        ShapeSprite:create(model,ShapeSprite.SHAPE_MODE.BODER)
    --            :move(GRID_BORDER,GRID_BORDER)
    --            :addTo(layer)
    --    end
    if self.cloud then
        ac.execute(self.cloud,ac.ccFadeTo(0.2,0))
    end
end

-----------
--游戏自动复原
--
--@function [parent=#GameView] timeclose
function GameView:stageRestore(win)
    local seq = self.model:restoreShapes()

    for v=1, #seq do
        if seq[v]~= 0 then
            self:goShapeGo(seq[v])
        end
    end

    local function call()
        ViewManager:getView(GAME_VIEW.gamePlay):stageClear()
    end

    ac.ccDellayToCall(self,ShapeSprite.SHAPE_MOVE_TO_TIME+ShapeSprite.TIME_TO_NEXT_STAGE,call)
end


-----------
--选项的层级设置
--
--@function [parent=#GameView] goShapeGo
function GameView:goShapeGo(index,wrongSelect)
    self.zOrder = self.zOrder+1
    self.opts[index]:setLocalZOrder(self.zOrder)
    self.optback[index]:setScale(0.95)
    ac.execute(self.optback[index],ac.ccScaleTo(0.15,1),{easing = 1})
    --    self.optback[index]:hide()
    if  wrongSelect then
        --错误的选择
        self:playTouchEffect()
        local function call1()
            self.opts[index]:lightOver(ShapeSprite.WRONG_STOP_TIME)
        end
        local function call2()
            --停止点击事件响应
            AppViews:getView(Layers_.gameController):enTouch()
            self.opts[index]:restore()
        end

        local function effectCall()
            self.effect = 1
            audio.playSound(GAME_EFFECT[11])
        end
        local function call3d()
            self:_3dgo(self.opts[index],self.orders[index],5)
        end
        local function call3dback()
            self:_3dgo(self.opts[index],self.orders[index],5,true)
        end

        --停止点击事件响应
        AppViews:getView(Layers_.gameController):disTouch()

        local x,y = self.opts[index]:getPosition()
        local easein = cc.EaseIn:create(cc.MoveTo:create(ShapeSprite.SHAPE_MOVE_TO_TIME,self.oPos), 1)
        local easeout = cc.EaseIn:create(cc.MoveTo:create(ShapeSprite.SHAPE_MOVE_TO_TIME,cc.p(x,y)), 1)
        self.opts[index]:valid()

        if self.on3dMode then
            self.opts[index]:runAction(cc.Sequence:create(
                cc.Spawn:create(easein,cc.ScaleTo:create(ShapeSprite.SHAPE_MOVE_TO_TIME,ARCHIVE_GRID_SCALE))
                ,cc.CallFunc:create(effectCall)
                ,cc.DelayTime:create(0.1)
                ,ac.ccCall(call3d),ac.ccDelay(0.38)
                ,cc.CallFunc:create(call1)
                ,cc.DelayTime:create(ShapeSprite.WRONG_STOP_TIME)
                ,ac.ccCall(call3dback),ac.ccDelay(0.38)
                ,cc.Spawn:create(easeout,cc.ScaleTo:create(ShapeSprite.SHAPE_MOVE_TO_TIME,OPT_GRID_SCALE))
                ,cc.CallFunc:create(call2)
            ))
        else
            self.opts[index]:runAction(cc.Sequence:create(
                cc.Spawn:create(easein,cc.ScaleTo:create(ShapeSprite.SHAPE_MOVE_TO_TIME,ARCHIVE_GRID_SCALE))
                ,cc.CallFunc:create(effectCall)
                ,cc.DelayTime:create(0.1)
                ,cc.CallFunc:create(call1)
                ,cc.DelayTime:create(ShapeSprite.WRONG_STOP_TIME)
                ,cc.Spawn:create(easeout,cc.ScaleTo:create(ShapeSprite.SHAPE_MOVE_TO_TIME,OPT_GRID_SCALE))
                ,cc.CallFunc:create(call2)
            ))
        end

        --        ac.execute(self.Touch,cc.Blink:create(3,3))

        ac.execute(self.Touch,cc.Repeat:create(
            cc.Sequence:create(ac.ccFadeTo(0.25,255),ac.ccFadeTo(0.25,0))
            ,4))

    else
        --正确的选择
        self:playTouchEffect()
        local shape = self.grid:getChildByTag(ShapeSprite.TAG_SHAPE_LAYER):getChildByTag(self.opts[index]:getModel():getColor())
        local function call()
            --            audio.playSound(GAME_EFFECT[9])
            shape:setCompleted()
            self.opts[index]:shapeFadeOut(ShapeSprite.SHAPE_FADE_OUT_TIME)
        end
        local function call3d()
            self:_3dgo(self.opts[index],self.orders[index],5)
        end

        --根据技能不同做校验
        self.opts[index]:valid()

        if self.on3dMode then
            local easein = cc.EaseIn:create(cc.MoveTo:create(ShapeSprite.SHAPE_MOVE_TO_TIME,self.oPos), 1)
            self.opts[index]:runAction(cc.Sequence:create(
                cc.Spawn:create(easein,cc.ScaleTo:create(ShapeSprite.SHAPE_MOVE_TO_TIME,ARCHIVE_GRID_SCALE))
                ,ac.ccCall(call3d),ac.ccDelay(0.38)
                ,cc.CallFunc:create(call),cc.DelayTime:create(ShapeSprite.SHAPE_FADE_OUT_TIME)
            ))
        else
            local easein = cc.EaseIn:create(cc.MoveTo:create(ShapeSprite.SHAPE_MOVE_TO_TIME,self.oPos), 1)
            self.opts[index]:runAction(cc.Sequence:create(
                cc.Spawn:create(easein,cc.ScaleTo:create(ShapeSprite.SHAPE_MOVE_TO_TIME,ARCHIVE_GRID_SCALE))
                ,cc.CallFunc:create(call),cc.DelayTime:create(ShapeSprite.SHAPE_FADE_OUT_TIME)
            ))
        end
        shape:valid()
    end

end

function GameView:playTouchEffect()
    audio.playSound(GAME_EFFECT[self.effect])
    self.effect = self.effect+1
end

function GameView:startREC()
--    self.icon_red:stopActionByTag(111)
--    local action = cc.RepeatForever:create(ac.ccSeq(ac.ccFadeTo(0.5,0),ac.ccFadeTo(0.5,255)))
--    action:setTag(111)
--    ac.execute(self.icon_red,action)
end
function GameView:stopREC()
--    self.icon_red:stopActionByTag(111)
--    self.icon_red:setOpacity(255)
end


function GameView:_3dgo(shape,key,rad,back)
    rad = rad or 1
    local scaleTo = cc.ScaleTo:create(1/rad,0.5,0.5)
    local moveTo = cc.MoveBy:create(0.5/rad,cc.p(-50*(key-1)+200,0))
    local cam = cc.OrbitCamera:create(1/rad, 1, 0,30,0, 0, 0)

    if back then
        local scaleTo = cc.ScaleTo:create(1/rad,1,1)
        local cam = cc.OrbitCamera:create(1/rad, 1, 0,0,0, 0, 0)
        ac.execute(shape,scaleTo)
        ac.execute(shape,moveTo:reverse())
        ac.execute(shape,cam)
    else
        ac.execute(shape,scaleTo)
        ac.execute(shape,moveTo)
        ac.execute(shape,cam)
    end
end


function GameView:show3DModel()
    for key, shape in pairs(self.shapes) do
        self:_3dgo(shape,key)
        shape:valid()
    end
    self.grid:rotate(0)
    for key, shape in pairs(self.opts) do
        shape:set3DModel()
    end
end


function GameView:onClick( path,node,funcName)
    if node:getName()=="btn_b" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            self.angel = self.angel -5

            for key, shape in pairs(self.shapes) do
                local cam = cc.OrbitCamera:create(1, 1, 0, self.angel,0, 0, 0)
                ac.execute(shape,ac.ccSeq(cam))
            end
        end
        return btnCallback
    elseif node:getName()=="btn_c" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            self.angel = self.angel + 5

            for key, shape in pairs(self.shapes) do
                local cam = cc.OrbitCamera:create(1, 1, 0, self.angel,0, 0, 0)
                ac.execute(shape,ac.ccSeq(cam))
            end
        end
        return btnCallback
    elseif node:getName()=="btn_touch_0" then
        local function btnCallback(node,eventType)
            if eventType == ccui.TouchEventType.began then
                if not self.on3dMode then
                    self:enUpdate()
                    self.touching = true
                    --3dtouch
                    local function call()
                        self:start3Discovery()
                    end
                    gamer:start3Dtouch(call)
                end
            elseif eventType == ccui.TouchEventType.moved then
            elseif eventType == ccui.TouchEventType.ended then
                if  not self.on3dMode then
                    self.touching = false
                end
                gamer:end3Dtouch()
            elseif eventType == ccui.TouchEventType.canceled then
            end
        end
        return btnCallback
    end
end

function GameView:start3Discovery()
    if not self.on3dMode then
        self.on3dMode = true
        self:show3DModel()
    end
end


function GameView:update()
    if self.touching then
        --按住状态
        if self.dcount<=473 then
            if  self.dcount  < 60 then
                self.dcount  = 60
            end

            self.dcount = self.dcount + self.touchdt_
            self.btn_touch:setContentSize({width = self.dcount, height = 60})
        else
            self:start3Discovery()
            self:disUpdate()
        end
    else
        --松开状态
        if self.dcount >= 0 then
            self.dcount = self.dcount - 20
            if self.dcount < 0 then
                self.dcount =  0
            end
            self.btn_touch:setContentSize({width = self.dcount, height = 60})
        else
            self:disUpdate()
        end
    end

end

return GameView
