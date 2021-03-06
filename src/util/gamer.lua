local gamer = class("gamer")

if device.platform == device.PLATFORM.IOS then
    luaoc =   require("cocos.cocos2d.luaoc")
end


function gamer:init()
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("WXShare","regist",{id = DNP_SHARE.wxAppId})
        luaoc.callStaticMethod("GameCenter","init",DNP_GAME.ios)
        if DNP_AD.target.gdt then
            luaoc.callStaticMethod("GdtAdManager","init")
        end
        if DNP_AD.target.vungle then
            luaoc.callStaticMethod("VungleAdManager","init",{id=DNP_AD.vungle.ios})
        end
        if DNP_AD.target.unity then
            luaoc.callStaticMethod("UnityAdManager","init",{id=DNP_AD.unity.ios})
        end
    end
end

---------------------------
-- gdt插屏广告
--
--@function [parent=#gamer] gdtLoadInerAd
function gamer:playGdtInerAd()
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("GdtAdManager","playInterAd")
    end
end

---------------------------
-- gdt全屏广告
--
--@function [parent=#gamer] gdtShowSplashAd
function gamer:playGdtSplashAd()
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("GdtAdManager","playSplashAd")
    end
end


---------------------------
-- 播放 UnityAd 广告
--
--@function [parent=#gamer] playUnityAd
function gamer:playUnityAd(callback)
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("UnityAdManager","playAd" ,{callback = callback})
    end
end

---------------------------
-- 查询是否 UnityAd 广告
--
--@function [parent=#gamer] isUnityAdReady
function gamer:isUnityAdReady(callback)
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("UnityAdManager","isReady",{callback = callback})
    end
end



---------------------------
-- 播放 VungleAd 广告
--
--@function [parent=#gamer] playVungleAd
function gamer:playVungleAd(callback)
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("VungleAdManager","play",{callback = callback})
    end
end


---------------------------
-- 查询是否 VungleAd 广告
--
--@function [parent=#gamer] isVungleReady
function gamer:isVungleReady(callback)
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("VungleAdManager","isReady",{callback = callback})
    end
end



---------------------------
-- 微信网页分享
--
--@function [parent=#gamer] wxShareWeb
--@param string#string text 消息文本
function gamer:wxShareWeb(scene,url,descr,title)
    if filename == nil then
        filename = ""
    end
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("WXShare","share",{type=2,scene= scene,text="文本测试",url=url,tagName="TagName",title=title,description=descr})
    end
end


---------------------------
-- 微信图片分享
--
--@function [parent=#gamer] wxShareWeb
--@param string#string text 消息文本
--@param string#string filename 图片的完整路径
function gamer:wxShareImage(scene,filename)
    if device.platform == device.PLATFORM.ANDROID then

    --        local a, b = require("luaj").callStaticMethod("org/cocos2dx/util/WXShare","shareWebPage",{scene,title,descr,filename,url},"(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V")
    elseif device.platform == device.PLATFORM.IOS then
        --0.回话 1.朋友
        luaoc.callStaticMethod("WXShare","share",{type=1,scene=scene, imagePath=filename,tagName = "tagName",messageExt = "messageExt",action = "action" })
    end
end



---------------------------
-- brief This method submits a score to the current leaderboard*/
--
--@function [parent=#gamer] SubmitScore
--@param number#number score 分数
--@param number#number leaderboardId 排行榜 id
function gamer:submitScore(score,leaderboardId,callback)
    --    dnp.DNPGameCenter:SubmitScore(score,leaderboardId)
    if type(score) == "number" and type(leaderboardId) == "number" then
        if device.platform == device.PLATFORM.ANDROID then

        elseif device.platform == device.PLATFORM.IOS then
            luaoc.callStaticMethod("GameCenter","submitScoreToLeaderboard",{lId=leaderboardId,score=score,callback=callback})
        end
    end
end

---------------------------
-- brief This method opens the leaderboards UI for the current board*/
--
--@function [parent=#gamer] ShowLeaderboards
--@param number#number leaderboardId 排行榜 id
function gamer:showLeaderboards(leaderboardID)
    if type(leaderboardID) == "number" then
        if device.platform == device.PLATFORM.ANDROID  then

        elseif device.platform == device.PLATFORM.IOS then
            luaoc.callStaticMethod("GameCenter","openGameCenterLeaderboardsUI",{lId=leaderboardID})
        end
    end
end


---------------------------
-- brief This method unlocks an achivement @param id: The index of the achivement in your list.*/
--
--@function [parent=#gamer] showLeaderboardListUI
function gamer:showLeaderboardListUI()
    if device.platform == device.PLATFORM.ANDROID then

    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("GameCenter","openGameCenterLeaderboardsUI")
    end
end

---------------------------
-- brief This method unlocks an achivement @param ID: The index of the achivement in your list.*/
--
--@function [parent=#gamer] UnlockAchivement
--@param number#number id 成就id
function gamer:unlockAchivement(id,callback)
    if type(id) == "number" then
        if device.platform == device.PLATFORM.ANDROID then
        elseif device.platform == device.PLATFORM.IOS then
            luaoc.callStaticMethod("GameCenter","unlockAchievement",{aId=id,callback=callback})
        end
    end
end

---------------------------
-- brief This method unlocks an achivement @param id: The index of the achivement in your list.*/
--
--@function [parent=#gamer] ShowAchievementsUI
function gamer:showAchievementsUI()
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("GameCenter","openAchievementUI")
    end
    --    dnp.DNPGameCenter:ShowAchievementsUI()
end

function gamer:inserICloud(rid,rname,rkeys,rvalues)
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("ICloudManager","insertRecord",{id = rid,name = rname,keys = rkeys,values = rvalues})
    end
end

function gamer:selectICloud(rid,rname,rkeys,callback)
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("ICloudManager","selectRecord",{id = rid,name = rname,keys = rkeys,callback = callback})
    end
end


function gamer:updateICloud(rid,rname,rkeys,rvalues)
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("ICloudManager","updateRecord",{id = rid,name = rname,keys = rkeys,values = rvalues})
    end
end

---------------------------
-- 保存到相册
--
--@function [parent=#gamer] saveToPhone
function gamer:saveToPhone(fileName)
    if device.platform == device.PLATFORM.ANDROID then
        local ok, ret require("luaj").callStaticMethod("org/cocos2dx/util/Gamer","tapSaveImageToIphone",{fileName},"(Ljava/lang/String;)V")
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("GameCenter","tapSaveImageToIphone",{filename = fileName })
    end
end


---------------------------
-- 3dtouch启动，按下区域可以相应3dtouch则在按下的时候调用该方法，
--
--@function [parent=#gamer] start3Dtouch
function gamer:start3Dtouch(callback)
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("Touch3DManager","startTouch",{callback = callback})
    end
end

---------------------------
-- 3dtouch结束
--
--@function [parent=#gamer] end3Dtouch
function gamer:end3Dtouch()
    if device.platform == device.PLATFORM.ANDROID then
    elseif device.platform == device.PLATFORM.IOS then
        luaoc.callStaticMethod("Touch3DManager","endTouch")
    end
end

return gamer
