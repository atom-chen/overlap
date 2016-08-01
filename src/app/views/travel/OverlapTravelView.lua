--------------------------------
-- 关卡选择界面
-- @module OverlapTrvalView
-- @extend ViewBase
-- @parent_module cc
-- OverlapTrvalView is a combination of view and controller
local OverlapTrvalView = class("OverlapTrvalView", cc.load("mvc").ViewBase)
OverlapTrvalView.LOCALE_LANG_LABEL = {
    Start          = _("Start"),
    You            = _("You"),
    Max            = _("Max"),
}
--$$$$$$$$$$$$$$$$ CONFIG $$$$$$$$$$$$$$$$$$$$$
OverlapTrvalView.RESOURCE_FILENAME = "travel.olap_travel.lua"

local TravelPageView = import(".TravelPageView")

--$$$$$$$$$$$$$$$$ ViewBase $$$$$$$$$$$$$$$$$$$$$
function OverlapTrvalView:onCreate()
    self:localLanguage()
    self:createPages()
    self.curPage = 0
    self:setPage(0)
    
end



function OverlapTrvalView:onClick( path,node,funcName)
    if node:getName()=="btn_back" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            AppViews:fadeBackAndClose(self)
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
        local function btnCallback(node,eventType)
--            gameUtils.transRight(self,Layers_.select)
            local page = self.curPage+1
            local mode = self.pageLayer[page]:getMode()
            local level = 1000+page*10+mode
            self:startGame(level)
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
    self.pageLayer = {}
    for page=3, 8 do
        local layout = ccui.Layout:create()
        local size = layout:getContentSize()
        self.pageLayer[page-2] = TravelPageView:create(self:getApp(),"")
            :move(500.5,667)
            :onPage(page-2)
            :addTo(layout)
        self.pageView:addPage(layout)
    end
end



----------------------------
-- 设置当前页面为指定页面
--@function [parent=#src.app.views.play.select.OverlapTrvalView] setDimension
--
function OverlapTrvalView:setPage(page)
    print(self.curPage+3)
    self["avatar_"..(self.curPage+3)]:setSpriteFrame(string.format("avatar-%d.png",self.curPage+3))
    self.curPage = page
    print(self.curPage+3)
    self["avatar_"..(self.curPage+3)]:setSpriteFrame(string.format("avatar-%d-on.png",page+3))
    
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
    
    local record =  helper.getSloterData("record"..(page+3)) or 0
    self.You:setString( _("You").." : "..record)
    
    local x = (90+455)*0.2 -90
    self.youpanel:setPositionX(x)
    
end

----------------------------
--移动到指定页面，动画
--@function [parent=#src.app.views.play.select.OverlapTrvalView] gotoPage
--
function OverlapTrvalView:gotoPage(page)
    self.pageView:scrollToPage(page)
end


return OverlapTrvalView
