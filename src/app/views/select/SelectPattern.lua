
local SelectPattern = class("SelectPattern", cc.load("mvc").ViewBase)

SelectPattern.RESOURCE_FILENAME = "select.select_level.lua"

function SelectPattern:onCreate()
  self:get():move(0,0)
  
    self.btn_select:setSwallowTouches(false)
--    self.btn_select:setPressedActionEnabled(true)
end


function SelectPattern:onClick( path,node,funcName)
    if node:getName()=="btn_select" then
        local function btnCallback(node,eventType)
            if eventType == ccui.TouchEventType.began then
                self.panel:setScale(0.9)
                ac.execute(self.panel,ac.ccScaleTo(0.15,1),{easing = 1})
                self._clickFlag = true
            elseif eventType == ccui.TouchEventType.moved then
                self.panel:setScale(1.0)
                self._clickFlag = false
            elseif eventType == ccui.TouchEventType.ended then
                self.panel:setScale(1.0)
                if self._clickFlag then
                    self:showPrepare()
                end
            elseif eventType == ccui.TouchEventType.canceled then
                self.panel:setScale(1.0)
                self._clickFlag = false
            end
        end
        return btnCallback
    end
    
 end
 
 
 
function SelectPattern:initLevel(page,index)
--    self.curlevel = (page-1)*9+index
    self.curlevel = index
    self.level:setString(page .. "-"..self.curlevel)
    self.page  = page
    return self
end


function SelectPattern:showPrepare()
    gameUtils.transFadeIn(Layers_.select,Layers_.prepare)
    local prepareView = AppViews:getView(Layers_.prepare)
    prepareView:prepare(self.page , self.curlevel)
end

return SelectPattern
