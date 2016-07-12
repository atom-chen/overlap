
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
end

function TravelPageView:onPage(page)
    self["avatar_"..(page+2)]:setSpriteFrame(string.format("avatar-%d-on.png",page+2))
   
   return self
end

function TravelPageView:onClick( path,node,funcName)
    if node:getName()=="btn_start" and funcName =="onClick" then
        local function btnCallback(node,eventType)
--            gameUtils.transRight(self,Layers_.select)
        end
        return btnCallback
       end
end


return TravelPageView
