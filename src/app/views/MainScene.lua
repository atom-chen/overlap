
local MainScene = class("MainScene", cc.load("mvc").ViewBase)


local OverlapBackView = import(".OverlapBackView")
local ShapeController = import("app.battle.controllers.ShapeController")
local OverlapHomeView = import(".home.OverlapHomeView")
local OverlapSelectView = import(".select.OverlapSelectView")
local GamePrepareView = import(".game.GamePrepareView")
local GameResultView = import(".game.GameResultView")
local GamePauseView = import(".game.GamePauseView")
local HomeConfigView = import(".home.HomeConfigView")
local OverlapSplashView = import(".OverlapSplashView")

function MainScene:onCreate()
    display.loadSpriteFrames("Resource/atlas/shape-entity.plist","Resource/atlas/shape-entity.png")
    display.loadSpriteFrames("Resource/atlas/shape-border.plist","Resource/atlas/shape-border.png")
    display.loadSpriteFrames("Resource/atlas/shape-shadow.plist","Resource/atlas/shape-shadow.png")
    display.loadSpriteFrames("Resource/atlas/planet.plist","Resource/atlas/planet.png")
    
    if helper.getSloterData(Sloters_.sound_off) then
        audio.setSoundsVolume(0)
    else
        audio.setSoundsVolume(1)
        audio.playMusic(GAME_BGM)
    end
    
    self:onSplash()
end

function MainScene:onClick( path,node,funcName)
    --    if path == "MainScene.lua" and node:getName()=="Button_1" and funcName =="onCloseClick" then
    local function btnCallback(  node,eventType  )
    --TODO
    end
    return btnCallback
        --        end
end

function MainScene:onSplash()
    self.splash = OverlapSplashView:create()
        :addTo(self)

    self.ground = OverlapBackView:create(self:getApp(),Layers_.ground)
        :hide()
        :addTo(self)
    self.gameController =  ShapeController:create(self:getApp(),Layers_.gameController)
        :hide()
        :addTo(self)
    self.selectView = OverlapSelectView:create(self:getApp(),Layers_.select)
        :hide()
        :addTo(self)

    self.prepareView = GamePrepareView:create(self:getApp(),Layers_.prepare)
        :hide()
        :addTo(self)

    self.mainView = OverlapHomeView:create(self:getApp(),Layers_.home)
        :hide()
        :addTo(self)


    self.resultView =  GameResultView:create(self:getApp(),Layers_.result)
        :hide()
        :addTo(self)
    self.pauseView =  GamePauseView:create(self:getApp(),Layers_.pause)
        :hide()
        :addTo(self)

    self.configView =  HomeConfigView:create(self:getApp(),Layers_.config)
        :hide()
        :addTo(self)
end

function MainScene:onGame()
    self.ground:show()
    self.mainView:show()
    self.mainView:createOverText()
    self.splash:removeSelf()
    self.splash = nil
    
--    gamer:inserICloud("overlapId4","overlap4","name;addredd","yuhang;beijing")
--    gamer:updateICloud("overlapId4","overlap4","name;addredd","yuhang1;beijing1")
    
--    local function callback(values)
--    print(values)
--    end
--    gamer:selectICloud("overlapId4","overlap4","name;addredd",callback)
--    
--   local icloud =  dnp.ICloud:sharedICloud()
--    
--    icloud:insertRecord("overlapId2","overlap2",{"name","addredd"},{"yuhang","beijing"})
--    local function after(result,values)
--        dump(values)
--    end
--    
--    icloud:addEventListener(after)
    
--    icloud:selectRecord("overlapId1","overlap1",{"name","addredd"})
end


function MainScene:gameStart(level)
    self.gameController:gameStart(level)
    self.gameController:show()
end



return MainScene
