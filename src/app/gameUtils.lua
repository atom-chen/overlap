
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

function gameUtils.scaleShow(target,dt)
    target:hide()
    local function onComplete1()
        target:show()
    end
    ac.execute(target,ac.ccSeq(
        ac.ccDelay(dt),ac.ccCall(onComplete1),ac.ccScaleTo(0.1,2),ac.ccScaleTo(0.1,1)
    ))
end

function gameUtils.fadeShow(target,dt)
    target:setOpacity(0)
    ac.execute(target,ac.ccSeq(
        ac.ccDelay(dt),ac.ccFadeTo(0.2,255)
    ))
end

-------------------------
----进场动画，提前加载的界面传入名字，没有名字的会根据名字新建
----
--function gameUtils.transLeft(curName,toName,dt)
--    local curView
--    if  type(curName) == "string"  then
--        curView =  AppViews:getView(curName)
--    elseif  type(curName) == "userdata"  then
--        curView =  curName
--    end
--
--
--    local toView
--    if AppViews:getView(toName) then
--        toView = AppViews:getView(toName)
--    else
--        toView =   AppViews:addViewByName(toName)
--    end
--
--    local aniTime = dt or  0.2
--    local aniAgrs = 5
--    gameUtils.mask(aniTime)
--    toView:setPositionX(1001)
--    toView:show()
--    local function onComplete()
--        curView:hide()
--    end
--    ac.execute(curView,ac.ccSeq(ac.ccMoveBy(aniTime,cc.p(-1001,0)),ac.ccCall(onComplete)),{easing = aniAgrs})
--    ac.execute(toView,ac.ccMoveBy(aniTime,cc.p(-1001,0)),{easing = aniAgrs})
--end
--
--
-------------------------
----退场动画，提前加载的界面传入名字，没有名字会在动画结束后删除
----
--function gameUtils.transRight(curName,toName,dt)
--    local curView
--    if type(curName) == "string" then
--        curView = AppViews:getView(curName)
--    else
--        curView = curName
--    end
--    local toView = AppViews:getView(toName)
--
--    local aniTime = dt or  0.2
--    local aniAgrs = 6
--    gameUtils.mask(aniTime)
--    toView:setPositionX(-1001)
--    toView:show()
--    local function onComplete()
--        if type(curName) == "string" then
--            curView:hide()
--        else
--            curView:removeSelf()
--        end
--    end
--    ac.execute(curView,ac.ccSeq(ac.ccMoveBy(aniTime,cc.p(1001,0)),ac.ccCall(onComplete)),{easing = aniAgrs})
--    ac.execute(toView,ac.ccMoveBy(aniTime,cc.p(1001,0)),{easing = aniAgrs})
--end
--
--
-------------------------
----进场动画，提前加载的界面传入名字，没有名字的会根据名字新建
----
--function gameUtils.transFadeIn(curName,toName,args)
--    local curView
--    if  type(curName) == "string"  then
--        curView =  AppViews:getView(curName)
--    elseif  type(curName) == "userdata"  then
--        curView =  curName
--    end
--
--    local toView
--    if AppViews:getView(toName) then
--        toView = AppViews:getView(toName)
--    else
--        local layName
--        if args and args.name then
--            layName = args.name
--        end
--
--        toView =   AppViews:addViewByName(toName,layName)
--    end
--
--    local aniTime =  0.4
--    local aniAgrs = 5
--    gameUtils.mask(aniTime)
--    toView:setPositionX(0)
--    curView:setPositionX(0)
--    toView:hide()
--    local function onComplete()
--        local cname = curView:getName()
--        if  not cname or cname=="" then
--            curView:closeSelf()
--        else
--            curView:hide()
--        end
--        toView:show()
--        if args and args.call then
--            args.call()
--        end
--    end
--    gameUtils.splashMask(aniTime)
--    ac.ccDellayToCall(toView,aniTime/2,onComplete)
--
--    --    ac.execute(curView,ac.ccSeq(ac.ccMoveBy(aniTime,cc.p(-1001,0)),ac.ccCall(onComplete)),{easing = aniAgrs})
--    --    ac.execute(toView,ac.ccMoveBy(aniTime,cc.p(-1001,0)),{easing = aniAgrs})
--end
--
--
-------------------------
----退场动画，提前加载的界面传入名字，没有名字会在动画结束后删除
----
--function gameUtils.transFadeOut(curName,toName)
--    local curView
--    if type(curName) == "string" then
--        curView = AppViews:getView(curName)
--    else
--        curView = curName
--    end
--    local toView = AppViews:getView(toName)
--
--    local aniTime = 0.4
--    local aniAgrs = 6
--    gameUtils.mask(aniTime)
--    toView:setPositionX(0)
--    curView:setPositionX(0)
--    toView:hide()
--    local function onComplete()
--
--        if type(curName) == "string" then
--            curView:hide()
--        else
--            curView:closeSelf()
--        end
--        toView:show()
--    end
--    gameUtils.splashMask(aniTime)
--    ac.ccDellayToCall(toView,aniTime/2,onComplete)
--    --    ac.execute(curView,ac.ccSeq(ac.ccMoveBy(aniTime,cc.p(1001,0)),ac.ccCall(onComplete)),{easing = aniAgrs})
--    --    ac.execute(toView,ac.ccMoveBy(aniTime,cc.p(1001,0)),{easing = aniAgrs})
--end



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
            light:setPositionX(s.width + 10)
        end
        if i == totalLen + 5 then
            i = 0
        end
    end
    view:addTimer(timerName,dt,9999999,showFont)
end


-----------------------
--进场动画，提前加载的界面传入名字，没有名字的会根据名字新建
--
function gameUtils.fadeTo(curName,toName,args)
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
        local layName
        if args and args.name then
            layName = args.name
        end

        toView =   AppViews:addViewByName(toName,layName)
    end

    local aniTime =  0.4
    if args and args.time then
        aniTime = args.time
    end
    toView:setPositionX(0)
    curView:setPositionX(0)
    toView:hide()
    toView["formView"] = curView
    local function onComplete()
        curView:hide()
        toView:show()

        if args and args.call then
            args.call()
        end
    end
    gameUtils.splashMask(aniTime)
    ac.ccDellayToCall(toView,aniTime/2,onComplete)
end

local function backView(fadeType,curName,args)
    local curView
    if  type(curName) == "string"  then
        curView =  AppViews:getView(curName)
    elseif  type(curName) == "userdata"  then
        curView =  curName
    end

    if not curView.formView then
        return
    end

    local toView = curView["formView"]
    local aniTime =  0.4
    if args and args.time then
        aniTime = args.time
    end
    toView:setPositionX(0)
    curView:setPositionX(0)
    toView:hide()
    local function onComplete()
        if "close" == fadeType then
            curView:closeSelf()
        else
            curView:hide()
        end
        toView:show()
        if args and args.call then
            args.call()
        end
    end
    gameUtils.splashMask(aniTime)
    ac.ccDellayToCall(toView,aniTime/2,onComplete)
end



function gameUtils.fadeBack(curName,args)
    backView("hide",curName,args)
end

function gameUtils.fadeBackAndClose(curName,args)
    backView("close",curName,args)
end


function gameUtils.updateAllRankData(rankData)

    local rankInfo =  helper.getSloterData(Sloters_.rankInfo)

    local randkinfo =  rankInfo["rank"..rankData.rankId]
    randkinfo.highest = rankData.score
    randkinfo.allRank = rankData.value
    helper.saveSloterData(Sloters_.rankInfo,rankInfo)

    gameUtils.updateRanklabel(rankData.rankId,randkinfo)
end

function gameUtils.updatePlayerRankData(rankData)
    local rankInfo =  helper.getSloterData(Sloters_.rankInfo)

    local randkinfo =  rankInfo["rank"..rankData.rankId]
    randkinfo.rank = rankData.rank
    helper.saveSloterData(Sloters_.rankInfo,rankInfo)
    
    gameUtils.updateRanklabel(rankData.rankId,randkinfo)
end

function gameUtils.updatePlayerScoreData(rankId,score)
    local rankInfo =  helper.getSloterData(Sloters_.rankInfo)

    local randkinfo =  rankInfo["rank"..rankId]
    randkinfo.score = score
    helper.saveSloterData(Sloters_.rankInfo,rankInfo)
end


function gameUtils.updateRanklabel(rankId,data)
    if AppViews:getView(Layers_.travel) then
        AppViews:getView(Layers_.travel):updateRankeLabel(rankId,data)
    end
end


function gameUtils.getRankId(obsMode,shapeMode)
    local myRankId
    if obsMode == GAME_ENDLESS_MODE.endless then
        if shapeMode == 3 then
            myRankId = DNP_RANK.rank_lv1
        elseif shapeMode == 4 then
            myRankId = DNP_RANK.rank_lv2
        elseif shapeMode == 5 then
            myRankId = DNP_RANK.rank_lv3
        elseif shapeMode == 6 then
            myRankId = DNP_RANK.rank_lv4
        elseif shapeMode == 7 then
            myRankId = DNP_RANK.rank_lv5
        elseif shapeMode == 8 then
            myRankId = DNP_RANK.rank_lv6
        end
    elseif obsMode == GAME_ENDLESS_MODE.random then
        if shapeMode == 3 then
            myRankId = DNP_RANK.rank_obs_lv1
        elseif shapeMode == 4 then
            myRankId = DNP_RANK.rank_obs_lv2
        elseif shapeMode == 5 then
            myRankId = DNP_RANK.rank_obs_lv3
        elseif shapeMode == 6 then
            myRankId = DNP_RANK.rank_obs_lv4
        elseif shapeMode == 7 then
            myRankId = DNP_RANK.rank_obs_lv5
        elseif shapeMode == 8 then
            myRankId = DNP_RANK.rank_obs_lv6
        end
    end

    return myRankId
end



return gameUtils

