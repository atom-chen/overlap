--------------------------------
-- 关卡选择界面
-- @module OverlapSelectView
-- @extend ViewBase
-- @parent_module cc
-- OverlapSelectView is a combination of view and controller
local OverlapSelectView = class("OverlapSelectView", cc.load("mvc").ViewBase)

--$$$$$$$$$$$$$$$$ CONFIG $$$$$$$$$$$$$$$$$$$$$
OverlapSelectView.RESOURCE_FILENAME = "travel.olap_travel.lua"

local TravelPageView = import(".TravelPageView")

--$$$$$$$$$$$$$$$$ ViewBase $$$$$$$$$$$$$$$$$$$$$
function OverlapSelectView:onCreate()
    self:createPages()
    self:setPage(0)
end



function OverlapSelectView:onClick( path,node,funcName)
    if node:getName()=="btn_back" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            gameUtils.transFadeOut(self,Layers_.select)
        end
        return btnCallback
    elseif node:getName()=="btn_right" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            if self.curPage + 1<= GAME_SCENE_COUNT - 1 then
                self.curPage = self.curPage + 1
                self:gotoPage(self.curPage)
            end
        end
        return btnCallback
    elseif node:getName()=="btn_left" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            if self.curPage - 1>=0 then
                self.curPage = self.curPage - 1
                self:gotoPage(self.curPage)
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
    end

end

--$$$$$$$$$$$$$$$$ OverlapSelectView $$$$$$$$$$$$$$$$$$$$$

function OverlapSelectView:createPages()
    self.pageLayer = {}
    for page=3, 8 do
        local layout = ccui.Layout:create()
        local size = layout:getContentSize()
        self.pageLayer[page] = TravelPageView:create(self:getApp(),"")
            :move(500.5,667)
            :addTo(layout)
        self.pageView:addPage(layout)
    end
end



----------------------------
-- 设置当前页面为指定页面
--@function [parent=#src.app.views.play.select.OverlapSelectView] setDimension
--
function OverlapSelectView:setPage(page)
    self.curPage = page
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
end

----------------------------
--移动到指定页面，动画
--@function [parent=#src.app.views.play.select.OverlapSelectView] gotoPage
--
function OverlapSelectView:gotoPage(page)
    self.pageView:scrollToPage(page)
end


return OverlapSelectView
