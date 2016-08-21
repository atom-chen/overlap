
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
    if not data then
        local rankInfo =  helper.getSloterData(Sloters_.rankInfo)
        if not rankInfo then
            rankInfo = {}
            for shapes=1, 6 do
                for obs=1, 2 do
                    local randId =  gameUtils.getRankId(obs,shapes+2)
                    local record =  helper.getSloterData("record"..obs..(shapes+2)) or 0
                    rankInfo["rank"..randId] = {score=record,rank = 99999,highest = 99999,allRank = 99999}
                end
            end
            helper.saveSloterData(Sloters_.rankInfo,rankInfo)
        end

        local randId =  gameUtils.getRankId(self.mode,self.page)
        ranks = rankInfo["rank"..randId]
    else
        ranks = data
    end

    self.HighScore:setString(_("HighScore").." : "..ranks.score)
    self.GHighScore:setString(_("AllHighScore").." : "..ranks.highest)

    local rankPos = string.format("%.1f", ranks.rank/ranks.allRank*100)
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

    return self
end

function TravelPageView:onClick( path,node,funcName)
    if node:getName()=="btn_trans" and funcName =="onClick" then
        local function btnCallback(node,eventType)
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
end

function TravelPageView:setRandom()
    self.mode = GAME_ENDLESS_MODE.random
    self.btn_trans:loadTextureNormal("btn-select-travel-on.png",1)
    self.btn_trans:loadTexturePressed("btn-select-travel-on.png",1)
    self.random:setString(_("Random")..":".._("On"))
    helper.saveSloterData(Sloters_.last_mode..(self.page-2),self.mode)
end


return TravelPageView
