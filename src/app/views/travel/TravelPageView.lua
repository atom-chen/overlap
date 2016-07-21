
local TravelPageView = class("TravelPageView", cc.load("mvc").ViewBase)

TravelPageView.RESOURCE_FILENAME = "travel.travel_page.lua"
TravelPageView.LOCALE_LANG_LABEL = {
    YourRank             = _("YourRank"),
    HighScore            = _("HighScore"),
    random               = _("Random"),
    score                = "12",
    rank                 = "123456",
}

function TravelPageView:onCreate()
    self:get():move(0,0)
    self:localLanguage()
    self.YourRank:setString(_("YourRank").." : ")
    self.HighScore:setString(_("HighScore").." : ")
    
    self.mode = GAME_ENDLESS_MODE.endless
    self:setEndless()
end

function TravelPageView:getMode()
    return self.mode
end

function TravelPageView:onPage(page)
    self.page = page+2
--    self["avatar_"..self.page]:setSpriteFrame(string.format("avatar-%d-on.png",self.page))
   
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
    self.switch2:setSpriteFrame("icon-select-travel-n.png")
    self.switch1:setSpriteFrame("icon-select-travel-h.png")
    self.random:setString(_("Endless"))
end
function TravelPageView:setRandom()
    self.mode = GAME_ENDLESS_MODE.random 
    self.switch2:setSpriteFrame("icon-select-travel-h.png")
    self.switch1:setSpriteFrame("icon-select-travel-n.png")
    self.random:setString(_("Random"))
end

return TravelPageView
