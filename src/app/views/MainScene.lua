
local MainScene = class("MainScene", cc.load("mvc").ViewBase)


local OverlapBackView = import(".OverlapBackView")
local ShapeController = import("app.battle.controllers.ShapeController")
local OverlapHomeView = import(".home.OverlapHomeView")
local OverlapSelectView = import(".select.OverlapSelectView")
local OverlapTrvalView = import(".travel.OverlapTravelView")
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
    display.loadSpriteFrames("Resource/atlas/collct.plist","Resource/atlas/collct.png")

    if helper.getSloterData(Sloters_.sound_off) then
        audio.setSoundsVolume(0)
    else
        audio.setSoundsVolume(1)
        audio.playMusic(GAME_BGM)
    end

    self:onSplash()

    if device.platform == device.PLATFORM.IOS then
        self:initIosPurchase()
    end
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
    self.ground = OverlapBackView:create(self:getApp(),Layers_.ground)
        --        :hide()
        :addTo(self)
    self.gameController =  ShapeController:create(self:getApp(),Layers_.gameController)
        :hide()
        :addTo(self)
    self.selectView = OverlapSelectView:create(self:getApp(),Layers_.select)
        :hide()
        :addTo(self)
    self.travelView = OverlapTrvalView:create(self:getApp(),Layers_.travel)
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

    self.splash = OverlapSplashView:create()
        :addTo(self)
end

function MainScene:onGame()
    --    self.ground:show()
    self.mainView:show()
    self.mainView:createOverText()
    self.splash:removeSelf()
    self.splash = nil
    
--        local rank = {
--        appId = DNP_APP.id.dnp,
--        rankId = DNP_RANK.rank_lv2,
--        key = device:getDeviceUid(),
--        score = 9999999,
--    }     
--    ActionExecutor:execute(msgdef.RankCommit,rank)
--    
--    local rank = {
--        appId = DNP_APP.id.dnp,
--        rankId = DNP_RANK.rank_lv1,
--        key = device:getDeviceUid(),
--    }     
--    --    ActionExecutor:execute(msgdef.RankPlayerInfo,rank)
--    ActionExecutor:execute(msgdef.RankAllInfo,rank)
--    
--    
--    local rank = {
--        appId = DNP_APP.id.dnp,
--        rankId = DNP_RANK.rank_lv1,
--        key = device:getDeviceUid(),
--    }     
--    ActionExecutor:execute(msgdef.RankPlayerInfo,rank)
end


function MainScene:gameStart(level)
    self.gameController:gameStart(level)
    self.gameController:show()
end

----------------------
--初始化AppStore购买认证
--
function MainScene:initIosPurchase()
    local function call(transaction)
        if transaction.transaction.state == "purchased" then
            local productKey = nil
            for k, v in ipairs(DNP_GAME.iap.ios) do
                if  transaction.transaction.productIdentifier == v then
            		productKey = k
            		break
            	end
            end
            local product = {
                appId = DNP_APP.id.dnp,
                productId = 1,
                productId = productKey,
                itemId = 0,
                deviceId = device:getDeviceUid(),
                payChannel = DNP_GAME.payChannel.appstore,
                receiptData = crypto.encodeBase64(transaction.transaction.receipt)
            }
            ActionExecutor:execute(msgdef.PayValidate,product)
            store.finishTransaction(transaction.transaction)
        end

    end
    store.init(call)
end


function MainScene:test()


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



return MainScene
