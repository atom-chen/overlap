
local OverlapHomeView = class("OverlapHomeView", cc.load("mvc").ViewBase)

OverlapHomeView.RESOURCE_FILENAME = "home.olap_home"
OverlapHomeView.LOCALE_LANG_LABEL = {
    Config           = _("Config"),
    Conllection      = _("Conllection"),
    Rank             = _("Rank"),
    Donation         = _("Donation"),
}
function OverlapHomeView:onCreate()
    self:localLanguage()
    ac.execute(self.icon_red,ac.ccForever(ac.ccSeq(ac.ccFadeTo(0.8,0),ac.ccFadeTo(0.8,255))))
    ac.execute(self.lbl_touch,ac.ccForever(ac.ccSeq(ac.ccFadeTo(2,0),ac.ccFadeTo(2,255),ac.ccDelay(0.3))))

    self.showtext = {}
    self.count = 0
    self:createOverText()

    self:updateStars()
    self:updateCollects()
end

function OverlapHomeView:updateStars()
    local stars =  LevelManager:getSceneStar()
    self.gotstars:setString(stars .. "/".. 9*GAME_SCENE_COUNT*3)
end

function OverlapHomeView:updateCollects()
    local collect,allcolt =  CollectionManager:getCollectionCount()
    self.gotcolts:setString(collect .. "/".. allcolt)
end


function OverlapHomeView:touch(event)
end


function OverlapHomeView:createOverText()
    local layout
    self.count = self.count +1
    --Create Panel_5
    local Panel_5 = ccui.Layout:create()
    Panel_5:ignoreContentAdaptWithSize(false)
    Panel_5:setClippingEnabled(false)
    Panel_5:setBackGroundColorType(1)
    Panel_5:setBackGroundColor({r = 150, g = 200, b = 255})
    Panel_5:setBackGroundColorOpacity(0)
    Panel_5:setLayoutComponentEnabled(true)
    Panel_5:setName("Panel_5")
    Panel_5:setTag(109)
    Panel_5:setCascadeColorEnabled(true)
    Panel_5:setCascadeOpacityEnabled(true)
    Panel_5:setPosition(2.1595, 0.1457)
    self.pl_text:addChild(Panel_5)

    --Create Text_3
    local Text_3 = ccui.Text:create()
    Text_3:ignoreContentAdaptWithSize(true)
    Text_3:setTextAreaSize({width = 0, height = 0})
    Text_3:setFontName("Resource/fonts/OverlapExt.ttf")
    Text_3:setFontSize(24)
    Text_3:setString([[]])
    Text_3:setLayoutComponentEnabled(true)
    Text_3:setName("Text_3")
    Text_3:setTag(108)
    Text_3:setCascadeColorEnabled(true)
    Text_3:setCascadeOpacityEnabled(true)
    Text_3:setAnchorPoint(0.0000, 0.5000)
    Text_3:setPosition(30, 28.9936)
    Panel_5:addChild(Text_3)

    --Create typewriter_light_6
    local typewriter_light_6 = cc.Sprite:createWithSpriteFrameName("typewriter_light.png")
    typewriter_light_6:setName("typewriter_light_6")
    typewriter_light_6:setTag(110)
    typewriter_light_6:setCascadeColorEnabled(true)
    typewriter_light_6:setCascadeOpacityEnabled(true)
    typewriter_light_6:setPosition(47.5089, 29.3419)
    typewriter_light_6:setBlendFunc({src = 1, dst = 771})
    Panel_5:addChild(typewriter_light_6)

    Panel_5.ct = 0
    table.insert(self.showtext,Panel_5)


    local word =   [[connection 123/56 overlap star ]]
    local totalLen = string.utf8len(word)
    local i = 0
    local function showFont()
        i = i+1
        local str = string.utf8str(word, 1, i)
        Text_3:setString(str)
        local s = Text_3:getContentSize()
        typewriter_light_6:setPositionX(s.width + 50)
        if i == totalLen then
            ac.stopTarget(typewriter_light_6)
            typewriter_light_6:hide()
            self:updateTypewriter()
        end
    end
    self:addTimer("HOME_TIMER_SHOW"..self.count,0.12,totalLen,showFont)

    ac.execute(typewriter_light_6,ac.ccForever(ac.ccSeq(ac.ccFadeTo(0.15,0),ac.ccFadeTo(0.15,255))))
end



function OverlapHomeView:updateTypewriter()
    for k, label in pairs(self.showtext) do
        label.ct = label.ct + 1
        if label.ct == 2 then
            local function onComplete()
                table.remove(self.showtext,k)
            end
            ac.execute(label,ac.ccSeq(
                cc.Spawn:create(ac.ccFadeTo(0.5,0),ac.ccMoveBy(0.5,cc.p(0,35))),ac.ccRemoveSelf(),ac.ccCall(onComplete)
            ))
        else
            ac.execute(label,ac.ccMoveBy(0.5,cc.p(0,35)))
        end

    end

    ac.ccDellayToCall(self,0.5,self.createOverText)

end


function OverlapHomeView:onClick( path,node,funcName)
    if node:getName()=="btn_overlap" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            AppViews:fadeTo(Layers_.home,Layers_.select)
        end

        return btnCallback
    elseif node:getName()=="btn_more" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            AppViews:fadeTo(Layers_.home,"app.views.home.HomeMoreView")
        end

        return btnCallback
    elseif node:getName()=="btn_noads" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            AppViews:fadeTo(Layers_.home,"app.views.home.HomeAdsView")
        end

        return btnCallback
    elseif node:getName()=="btn_collection" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            AppViews:fadeTo(Layers_.home,"app.views.home.collection.HomeCollectionView",{name = Layers_.collectionView})
        end

        return btnCallback
    elseif node:getName()=="btn_config" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            AppViews:fadeTo(Layers_.home,Layers_.config)
        end

        return btnCallback
    end

end



return OverlapHomeView
