
---------------------------
--游戏级别的全局工具类
--
--@type app
local gameUtils = class("gameUtils")


function gameUtils.mask(dt)
    local mask =   AppViews:addViewByName("app.views.common.CommonMaskView")
    mask:_mask(dt)
end

function gameUtils.splashMask(dt)
    local mask =   AppViews:addViewByName("app.views.common.CommonMaskView")
    mask:_splashMask(dt)
end

function gameUtils.showCommonDialog(content)
    local dialog =   AppViews:addViewByName("app.views.common.CommonDialogView")
    dialog:addContent(content)
end

-----------------------
--进场动画，提前加载的界面传入名字，没有名字的会根据名字新建
--
function gameUtils.transLeft(curName,toName,dt)
    local curView
    if  type(curName) == "string"  then
        curView =  AppViews:getView(curName)
    elseif  type(curName) == "userdata"  then
        curView =  curName
    end


    local toView
    if AppViews:getView(toName) then
        toView = AppViews:getView(toName)
    else
        toView =   AppViews:addViewByName(toName)
    end

    local aniTime = dt or  0.2
    local aniAgrs = 5
    gameUtils.mask(aniTime)
    toView:setPositionX(1001)
    toView:show()
    local function onComplete()
        curView:hide()
    end
    ac.execute(curView,ac.ccSeq(ac.ccMoveBy(aniTime,cc.p(-1001,0)),ac.ccCall(onComplete)),{easing = aniAgrs})
    ac.execute(toView,ac.ccMoveBy(aniTime,cc.p(-1001,0)),{easing = aniAgrs})
end


-----------------------
--退场动画，提前加载的界面传入名字，没有名字会在动画结束后删除
--
function gameUtils.transRight(curName,toName,dt)
    local curView
    if type(curName) == "string" then
        curView = AppViews:getView(curName)
    else
        curView = curName
    end
    local toView = AppViews:getView(toName)

    local aniTime = dt or  0.2
    local aniAgrs = 6
    gameUtils.mask(aniTime)
    toView:setPositionX(-1001)
    toView:show()
    local function onComplete()
        if type(curName) == "string" then
            curView:hide()
        else
            curView:removeSelf()
        end
    end
    ac.execute(curView,ac.ccSeq(ac.ccMoveBy(aniTime,cc.p(1001,0)),ac.ccCall(onComplete)),{easing = aniAgrs})
    ac.execute(toView,ac.ccMoveBy(aniTime,cc.p(1001,0)),{easing = aniAgrs})
end


-----------------------
--进场动画，提前加载的界面传入名字，没有名字的会根据名字新建
--
function gameUtils.transFadeIn(curName,toName,dt)
    local curView
    if  type(curName) == "string"  then
        curView =  AppViews:getView(curName)
    elseif  type(curName) == "userdata"  then
        curView =  curName
    end

    local toView
    if AppViews:getView(toName) then
        toView = AppViews:getView(toName)
    else
        toView =   AppViews:addViewByName(toName)

    end

    local aniTime = dt or  0.4
    local aniAgrs = 5
    gameUtils.mask(aniTime)
    toView:setPositionX(0)
    curView:setPositionX(0)
    toView:hide()
    local function onComplete()
        if  type(curName) == "userdata" then
            curView:removeSelf()
        elseif  type(curName) == "string" then
            curView:hide()
        end
        toView:show()
    end
    gameUtils.splashMask(aniTime)
    ac.ccDellayToCall(toView,aniTime/2,onComplete)

    --    ac.execute(curView,ac.ccSeq(ac.ccMoveBy(aniTime,cc.p(-1001,0)),ac.ccCall(onComplete)),{easing = aniAgrs})
    --    ac.execute(toView,ac.ccMoveBy(aniTime,cc.p(-1001,0)),{easing = aniAgrs})
end


-----------------------
--退场动画，提前加载的界面传入名字，没有名字会在动画结束后删除
--
function gameUtils.transFadeOut(curName,toName,dt)
    local curView
    if type(curName) == "string" then
        curView = AppViews:getView(curName)
    else
        curView = curName
    end
    local toView = AppViews:getView(toName)

    local aniTime = dt or  0.4
    local aniAgrs = 6
    gameUtils.mask(aniTime)
    toView:setPositionX(0)
    curView:setPositionX(0)
    toView:hide()
    local function onComplete()
       
        if type(curName) == "string" then
            curView:hide()
        else
            curView:removeSelf()
        end
        toView:show()
    end
    gameUtils.splashMask(aniTime)
    ac.ccDellayToCall(toView,aniTime/2,onComplete)
--    ac.execute(curView,ac.ccSeq(ac.ccMoveBy(aniTime,cc.p(1001,0)),ac.ccCall(onComplete)),{easing = aniAgrs})
--    ac.execute(toView,ac.ccMoveBy(aniTime,cc.p(1001,0)),{easing = aniAgrs})
end



function gameUtils.loopTypeWriter(view,timerName,label,text,dt,light)
    local totalLen = string.utf8len(text)
    local i = 0
    local count = 0
    local function showFont()
        i = i+1
        local str = string.utf8str(text, 1, i)
        label:setString(str)
        if light then
            local s = label:getContentSize()
            light:setPositionX(s.width + 92)
        end
        if i == totalLen + 5 then
            i = 0
        end
    end
    view:addTimer(timerName,dt,9999999,showFont)
end


return gameUtils

