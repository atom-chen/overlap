
local TravelPageView = class("TravelPageView", cc.load("mvc").ViewBase)

TravelPageView.RESOURCE_FILENAME = "travel.travel_page.lua"
TravelPageView.LOCALE_LANG_LABEL = {
    YourRank             = _("YourRank"),
    HighScore            = _("HighScore"),
    GHighScore            = _("AllHighScore"),
--    Position            = _("Position"),
    random               = _("Random"),
--    score                = "12",
--    rank                 = "123456",
}

function TravelPageView:onCreate()
    self:get():move(0,0)
    self:localLanguage()
    self.HighScore:setString(_("HighScore").." : 12")
    self.GHighScore:setString(_("AllHighScore").." : 123")
    self.YourRank:setString(_("YourRank").." : ".."12".."(".._("Position").."10%)")
end

function TravelPageView:getMode()
    return self.mode
end

function TravelPageView:onPage(page)
    self.page = page+2
    self.avatar:setSpriteFrame(string.format("avatar-%d.png",self.page))
   
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
