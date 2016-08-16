
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
                self.btn_select:setScale(0.9)
                ac.execute(self.btn_select,ac.ccScaleTo(0.15,1),{easing = 1})
            elseif eventType == ccui.TouchEventType.moved then
                self.panel:setScale(1.0)
            elseif eventType == ccui.TouchEventType.ended then
                self.btn_select:setScale(1.0)
                if not AppViews:getView(Layers_.select):isMoved() and self.open then
                    self:showPrepare()
                end
            elseif eventType == ccui.TouchEventType.canceled then
                self.btn_select:setScale(1.0)
            end
        end
        return btnCallback
    end

end



function SelectPattern:initLevel(page,index)
    local level = (page-1)*9+index
    self.curlevel = index
    self.level:setString(page .. "-"..self.curlevel)
    self.page  = page
    self:updatePattern(level)

    return self
end

function SelectPattern:updatePattern(level)
    local infos =  LevelManager:getStageInfo(level)

    if infos[4] then
        self.level:show()
        self.lock:hide()
        
        self.open = true
    else
        self.level:hide()
        self.lock:show()
        self.open = false
    end
    
    local cnt = 0   --星星个数
    for s=1, 3 do
        if infos[s]~= 0 then
            self["star"..s]:show()
            cnt = cnt + 1
        else
            self["star"..s]:hide()
        end
    end
    if cnt == 3 then
    	self.level:setColor(cc.c3b(120,120,120))
        self["star1"]:setColor(cc.c3b(112,112,112))
        self["star2"]:setColor(cc.c3b(112,112,112))
        self["star3"]:setColor(cc.c3b(112,112,112))
        self.btn_select:loadTextureNormal("dialog-back-white.png",1)
        self.btn_select:loadTexturePressed("dialog-back-white.png",1)
        self.btn_select:loadTextureDisabled("dialog-back-white.png",1)
    else
        self.level:setColor(cc.c3b(241,241,241))
        self["star1"]:setColor(cc.c3b(255,255,255))
        self["star2"]:setColor(cc.c3b(255,255,255))
        self["star3"]:setColor(cc.c3b(255,255,255))
    end
    
end


function SelectPattern:showPrepare()
   AppViews:fadeTo(Layers_.select,Layers_.prepare)
    local prepareView = AppViews:getView(Layers_.prepare)
    prepareView:prepare(self.page , self.curlevel)
end

return SelectPattern
