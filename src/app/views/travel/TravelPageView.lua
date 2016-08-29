
local TravelPageView = class("TravelPageView", cc.load("mvc").ViewBase)

TravelPageView.RESOURCE_FILENAME = "travel.travel_page.lua"
TravelPageView.LOCALE_LANG_LABEL = {
    YourRank             = _("YourRank"),
    HighScore            = _("HighScore"),
    GHighScore            = _("AllHighScore"),
    random               = _("Random"),
}

function TravelPageView:onCreate()
    self:get():move(0,0)
    self:localLanguage()
end

function TravelPageView:getMode()
    return self.mode
end


function TravelPageView:updateRank(data)
    local ranks
    local randId =  gameUtils.getRankId(self.mode,self.page)
    local rankInfo =  helper.getSloterData(Sloters_.rankInfo)
    ranks = rankInfo["rank"..randId]

    self.HighScore:setString(_("HighScore").." : "..ranks.score)
    self.GHighScore:setString(_("AllHighScore").." : "..ranks.highest)

    local posRank = 100 - ranks.rank/ranks.allRank*100
    local rankPos
    if posRank>90 then
        rankPos = "90"
    elseif posRank == 0 then
        rankPos = "1"
    else
        rankPos = string.format("%.1f", posRank)
    end
    self.YourRank:setString(_("YourRank").." : "..ranks.rank.."(".._("Position")..rankPos.."%)")
end


function TravelPageView:updateWorldRank()

    local myRankId1 = nil
    local myRankId2 = nil

    if self.page == 3 then
        myRankId1 = DNP_RANK.rank_lv1
    elseif self.page == 4 then
        myRankId1 = DNP_RANK.rank_lv2
    elseif self.page == 5 then
        myRankId1 = DNP_RANK.rank_lv3
    elseif self.page == 6 then
        myRankId1 = DNP_RANK.rank_lv4
    elseif self.page == 7 then
        myRankId1 = DNP_RANK.rank_lv5
    elseif self.page == 8 then
        myRankId1 = DNP_RANK.rank_lv6
    end

    if self.page == 3 then
        myRankId2 = DNP_RANK.rank_obs_lv1
    elseif self.page == 4 then
        myRankId2 = DNP_RANK.rank_obs_lv2
    elseif self.page == 5 then
        myRankId2 = DNP_RANK.rank_obs_lv3
    elseif self.page == 6 then
        myRankId2 = DNP_RANK.rank_obs_lv4
    elseif self.page == 7 then
        myRankId2 = DNP_RANK.rank_obs_lv5
    elseif self.page == 8 then
        myRankId2 = DNP_RANK.rank_obs_lv6
    end

    self:executeForRank(myRankId1)
    self:executeForRank(myRankId2)
end


function TravelPageView:executeForRank(rankLv)
    local rank = {
        appId = DNP_APP.id.dnp,
        rankId = rankLv,
        key = device:getDeviceUid(),
    }
    ActionExecutor:execute(msgdef.RankAllInfo,rank)


    local rank = {
        appId = DNP_APP.id.dnp,
        rankId = rankLv,
        key = device:getDeviceUid(),
    }
    ActionExecutor:execute(msgdef.RankPlayerInfo,rank)

end


function TravelPageView:onPage(page)
    self.page = page+2
    self.avatar:setSpriteFrame(string.format("avatar-%d.png",self.page))

    self:updateWorldRank()

    self.mode =  helper.getSloterData(Sloters_.last_mode..(self.page-2)) or GAME_ENDLESS_MODE.random

    if self.mode == GAME_ENDLESS_MODE.random then
        self:setRandom()
    elseif self.mode == GAME_ENDLESS_MODE.endless then
        self:setEndless()
    end

    self:updateRank()
    return self
end

function TravelPageView:onClick( path,node,funcName)
    if node:getName()=="btn_trans" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            audio.playSound(GAME_EFFECT[13])
            if  self.mode == GAME_ENDLESS_MODE.endless then
                --随机模式
                self:setRandom()
            elseif  self.mode == GAME_ENDLESS_MODE.random then
                --障碍模式
                self:setEndless()
            end

        end
        return btnCallback
    end
end


function TravelPageView:setEndless()
    self.mode = GAME_ENDLESS_MODE.endless
    self.btn_trans:loadTextureNormal("btn-select-travel-off.png",1)
    self.btn_trans:loadTexturePressed("btn-select-travel-off.png",1)
    self.random:setString(_("Random")..":".._("Off"))

    helper.saveSloterData(Sloters_.last_mode..(self.page-2),self.mode)

    self.avatar:setSpriteFrame(string.format("avatar-%d.png",self.page))

    self:updateRank()
    AppViews:getView(Layers_.travel):setRankButtomVisible(true)
end

function TravelPageView:setRandom()
    self.mode = GAME_ENDLESS_MODE.random
    self.btn_trans:loadTextureNormal("btn-select-travel-on.png",1)
    self.btn_trans:loadTexturePressed("btn-select-travel-on.png",1)
    self.random:setString(_("Random")..":".._("On"))
    helper.saveSloterData(Sloters_.last_mode..(self.page-2),self.mode)

    self.avatar:setSpriteFrame(string.format("avatar-%d-on.png",self.page))

    self:updateRank()
    AppViews:getView(Layers_.travel):setRankButtomVisible(false)
end


return TravelPageView
