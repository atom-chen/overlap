
local OverlapHomeView = class("OverlapHomeView", cc.load("mvc").ViewBase)

OverlapHomeView.RESOURCE_FILENAME = "home.olap_home"
OverlapHomeView.LOCALE_LANG_LABEL = {
    Config       = _("Config"),
    Conllection   = _("Conllection"),
    Rank         = _("Rank"),
}
function OverlapHomeView:onCreate()
    self:localLanguage()
    --    self.Text_2:setAdditionalKerning(10)

    local text ="connection 123/56 overlap star "
    gameUtils.loopTypeWriter(self,"HOME_TIMER_SHOW", self.lbl_title2,text,0.12,self.wright_light)
    ac.execute(self.icon_red,ac.ccForever(ac.ccSeq(ac.ccFadeTo(0.8,0),ac.ccFadeTo(0.8,255))))
    ac.execute(self.wright_light,ac.ccForever(ac.ccSeq(ac.ccFadeTo(0.15,0),ac.ccFadeTo(0.15,255))))
    
--    self.btn_overlap:setPressedActionEnabled(true)
end

function OverlapHomeView:touch(event)
end



function OverlapHomeView:onClick( path,node,funcName)
    if node:getName()=="btn_overlap" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            gameUtils.transFadeIn(Layers_.home,Layers_.select)
        end

        return btnCallback
    elseif node:getName()=="btn_more" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            gameUtils.transFadeIn(Layers_.home,"app.views.home.HomeMoreView")
        end

        return btnCallback
    elseif node:getName()=="btn_noads" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            gameUtils.transFadeIn(Layers_.home,"app.views.home.HomeAdsView")
        end

        return btnCallback
    elseif node:getName()=="btn_collection" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            gameUtils.transFadeIn(Layers_.home,"app.views.home.collection.HomeCollectionView")
        end

        return btnCallback
    elseif node:getName()=="btn_config" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            gameUtils.transFadeIn(Layers_.home,Layers_.config)
        end

        return btnCallback
    end

end



return OverlapHomeView
