--------------------------------
-- 关卡选择界面
-- @module OverlapTrvalView
-- @extend ViewBase
-- @parent_module cc
-- OverlapTrvalView is a combination of view and controller
local OverlapTrvalView = class("OverlapTrvalView", cc.load("mvc").ViewBase)
OverlapTrvalView.LOCALE_LANG_LABEL = {
    Start          = _("Start"),
}
--$$$$$$$$$$$$$$$$ CONFIG $$$$$$$$$$$$$$$$$$$$$
OverlapTrvalView.RESOURCE_FILENAME = "travel.olap_travel.lua"

local TravelPageView = import(".TravelPageView")
--local Level          = import("app.data.Level")
--$$$$$$$$$$$$$$$$ ViewBase $$$$$$$$$$$$$$$$$$$$$
function OverlapTrvalView:onCreate()
    self:localLanguage()
    self:createPages()

    --    local lastpage = helper.getSloterData(Sloters_.last_page_travel) or 0
    --    self.pageView:setCurrentPageIndex(lastpage)
    --    self:setPage(lastpage)
end



function OverlapTrvalView:onClick( path,node,funcName)
    if node:getName()=="btn_back" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            AppViews:fadeBack(self)
        end
        return btnCallback
    elseif node:getName()=="btn_right" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            if self.curPage + 1<= GAME_SCENE_COUNT - 1 then
                --                self.curPage = self.curPage + 1
                self:gotoPage(self.curPage+1)
            end
        end
        return btnCallback
    elseif node:getName()=="btn_left" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            if self.curPage - 1>=0 then
                --                self.curPage = self.curPage - 1
                self:gotoPage(self.curPage-1)
            end
        end
        return btnCallback
    elseif node:getName()=="pageView" and funcName =="onEvent" then
        local function btnCallback(node,eventType)
            if eventType == ccui.PageViewEventType.turning then
                local page =  node:getCurrentPageIndex()
                if page == -1 then page = 0 end
                self:setPage(page)
            end
        end
        return btnCallback
    elseif node:getName()=="btn_start" and funcName =="onClick" then
        --无尽模式开始按钮
        local function btnCallback(node,eventType)
            local page = self.curPage
            local mode = self.pageLayer:getMode()
            local level = 1000+page*10+mode
            self:startGame(level)
        end
        return btnCallback
    elseif node:getName()=="btn_rank" and funcName =="onClick" then
        --无尽模式开始按钮
        local function btnCallback(node,eventType)
            gamer:showLeaderboards(0)
        end
        return btnCallback
    end

end

--$$$$$$$$$$$$$$$$ OverlapTrvalView $$$$$$$$$$$$$$$$$$$$$

function OverlapTrvalView:startGame(gameLevel)
    gameLevel =  gameLevel or self.gameLevel
    self.gameLevel = gameLevel
    local function startCall()
        self:hide()
        AppViews:getView(Layers_.mainScene):gameStart(self.gameLevel)
        AppViews:getView(Layers_.result):prepareTravel(self.gameLevel)

    end
    AppViews:fadeTo(self,Layers_.gameController,{call = startCall})
end


function OverlapTrvalView:createPages()
    self.pageLayer =  TravelPageView:create(self:getApp(),"")
        :move(500.5,667)
        :addTo(self.pageView)
end


function OverlapTrvalView:showOnPage(page)
    self.pageLayer:onPage(page)
    self.curPage = page
end



----------------------------
--更新指定界面的排行榜信息，只是更新标签
--@function [parent=#src.app.views.play.select.OverlapTrvalView] updateRankeLabel
--
function OverlapTrvalView:updateRankeLabel(rankId,data)
    local page =   rankId- math.floor(rankId/10)*10
    self.pageLayer:updateRank(data)
end

----------------------------
--查询指定页面的标签并且更新
--@function [parent=#src.app.views.play.select.OverlapTrvalView] updatePageRank
--
function OverlapTrvalView:updatePageRank()
    self.pageLayer:updateWorldRank()
end


return OverlapTrvalView
