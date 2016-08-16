--------------------------------
-- 关卡选择界面
-- @module OverlapSelectView
-- @extend ViewBase
-- @parent_module cc
-- OverlapSelectView is a combination of view and controller
local OverlapSelectView = class("OverlapSelectView", cc.load("mvc").ViewBase)

OverlapSelectView.LOCALE_LANG_LABEL = {
    trval          = _("trval"),
}

--$$$$$$$$$$$$$$$$ CONFIG $$$$$$$$$$$$$$$$$$$$$
OverlapSelectView.RESOURCE_FILENAME = "select.olap_select.lua"

local SelectPageView = import(".SelectPageView")

--$$$$$$$$$$$$$$$$ ViewBase $$$$$$$$$$$$$$$$$$$$$
function OverlapSelectView:onCreate()
    self:localLanguage()
    self:createPages()
    
    self:enTouch()
end


function OverlapSelectView:touch(event)
    if event.name == "began" then
        self.touchMoved = false
        self.touchBegin = cc.p(event.x,event.y)
        return true
    elseif event.name == "moved" then
        if not self.touchMoved and cc.pGetDistance(self.touchBegin,cc.p(event.x,event.y))>30 then
            self.touchMoved = true
        end
    elseif event.name == "ended" then
    
    end
end

function OverlapSelectView:isMoved()
  return self.touchMoved
end


function OverlapSelectView:onClick( path,node,funcName)
    if node:getName()=="btn_back" and funcName =="onClick" then
        local function btnCallback(node,eventType)
           AppViews:fadeBack(Layers_.select,Layers_.home)
--            gameUtils.transFadeOut(Layers_.select,Layers_.home)
        end

        return btnCallback
    elseif node:getName()=="btn_right" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            if self.curPage + 1<= GAME_SCENE_COUNT - 1 then
                self.curPage = self.curPage + 1
                self:gotoPage(self.curPage)
            end
--            if self.curPage == GAME_SCENE_COUNT-1 then
--                self.btn_right:hide()
--            else
--                self.btn_right:show()
--            end
        end
        return btnCallback
    elseif node:getName()=="btn_left" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            if self.curPage - 1>=0 then
                self.curPage = self.curPage - 1
                self:gotoPage(self.curPage)
            end
--            if self.curPage == 0 then
--            	self.btn_left:hide()
--            else
--                self.btn_left:show()
--            end
        end
        return btnCallback
    elseif node:getName()=="btn_travel" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            AppViews:fadeTo(Layers_.select,"app.views.travel.OverlapTravelView",{name = Layers_.travel})
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
    end

end

--$$$$$$$$$$$$$$$$ OverlapSelectView $$$$$$$$$$$$$$$$$$$$$

----------------------------
--创建场景和界面
--@function [parent=#src.app.views.play.select.OverlapSelectView] createPages
--
function OverlapSelectView:createPages()
    self.pageLayer = {}
    for page=1, GAME_SCENE_COUNT do
        local layout = ccui.Layout:create()
        local size = layout:getContentSize()
        self.pageLayer[page] = SelectPageView:create(self:getApp(),"")
            :move(500.5,667)
            :createPage(page)
            :addTo(layout)
        self.pageView:addPage(layout)
    end
    local lastpage = helper.getSloterData(Sloters_.last_page) or 0
    self.pageView:setCurrentPageIndex(lastpage)
    self:setPage(lastpage)
end

----------------------------
-- 设置当前页面为指定页面
--@function [parent=#src.app.views.play.select.OverlapSelectView] setDimension
--
function OverlapSelectView:setPage(page)
    self.curPage = page
    ac.execute(self.pc,ac.ccMoveTo(0.05,cc.p(self['p'..(page+1)]:getPosition())))
    AppViews:getView(Layers_.ground):setScene(page)
    
--    local stars =  LevelManager:getSceneStar(page)
--    self.starcount:setString(stars.." / 24")
    
    if self.curPage == GAME_SCENE_COUNT-1 then
    	self.btn_right:hide()
    else
        self.btn_right:show()
    end
    if self.curPage == 0 then
    	self.btn_left:hide()
    else
        self.btn_left:show()
    end
    
    
    helper.saveSloterData(Sloters_.last_page,page)
end

function OverlapSelectView:updateStars()
--    local stars =  LevelManager:getSceneStar(self.curPage)
--    self.starcount:setString(stars.." / 24")
end

----------------------------
--移动到指定页面，动画
--@function [parent=#src.app.views.play.select.OverlapSelectView] gotoPage
--
function OverlapSelectView:gotoPage(page)
    self.btn_left:hide()
    self.btn_right:hide()
    self.pageView:scrollToPage(page)
end




return OverlapSelectView
