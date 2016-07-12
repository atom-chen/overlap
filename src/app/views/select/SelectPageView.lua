
local SelectPageView = class("SelectPageView", cc.load("mvc").ViewBase)

SelectPageView.RESOURCE_FILENAME = "select.select_page.lua"
SelectPageView.OffSetX = 266
SelectPageView.OffSetY = 802

local SelectPattern = import(".SelectPattern")
SelectPattern.PATERN_WIDTH = 165
SelectPattern.PATERN_HEIGHT = 165

function SelectPageView:onCreate()
    self:get():move(0,0)
end

function SelectPageView:createPage(page)
    for x=1, 3 do
        for y=1, 3 do
           local pattern =  SelectPattern:create(self:getApp(),"")
                :move(SelectPageView.OffSetX + (x-1)*SelectPattern.PATERN_WIDTH,SelectPageView.OffSetY - (y-1)*SelectPattern.PATERN_HEIGHT)
                :initLevel(page,(y-1)*3+x)
                :addTo(self.panel)
            LevelManager.patterns[(page-1)*9 + (y-1)*3+x] = pattern
        end
    end
    
    return self
end


return SelectPageView
