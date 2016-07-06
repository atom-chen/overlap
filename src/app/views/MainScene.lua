
local MainScene = class("MainScene", cc.load("mvc").ViewBase)


local OverlapBackView = import(".OverlapBackView")
local ShapeController = import("app.battle.controllers.ShapeController")
local OverlapHomeView = import(".home.OverlapHomeView")
local OverlapSelectView = import(".select.OverlapSelectView")
local GamePrepareView = import(".game.GamePrepareView")
local GameResultView = import(".game.GameResultView")
local GamePauseView = import(".game.GamePauseView")
local HomeConfigView = import(".home.HomeConfigView")

function MainScene:onCreate()
    display.loadSpriteFrames("Resource/atlas/shape-entity.plist","Resource/atlas/shape-entity.png")
    display.loadSpriteFrames("Resource/atlas/shape-border.plist","Resource/atlas/shape-border.png")
    display.loadSpriteFrames("Resource/atlas/planet.plist","Resource/atlas/planet.png")
    self:onGame()
end

function MainScene:onClick( path,node,funcName)
    --    if path == "MainScene.lua" and node:getName()=="Button_1" and funcName =="onCloseClick" then
    local function btnCallback(  node,eventType  )
    --TODO
    end
    return btnCallback
        --        end
end


function MainScene:onGame()
    OverlapBackView:create(self:getApp(),Layers_.ground)
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


function MainScene:gameStart(level)
    self.gameController:gameStart(level)
    self.gameController:show()
end



return MainScene
