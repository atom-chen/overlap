local CollectionCellView = class("CollectionCellView", cc.load("mvc").ViewBase)

CollectionCellView.RESOURCE_FILENAME = "collection.collection_cell"

local CollectionInfoView = import(".CollectionInfoView")

function CollectionCellView:onCreate()
    self:get():move(0,0)
end

function CollectionCellView:touch(event)
end


function CollectionCellView:updateCell(data)
    self:show()
    self.id  = data.id
    self.has = (data.has ~= 0)
    if self.has then
        cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/scollct.plist")
        self.collect:setSpriteFrame(string.format("s-collection-%d.png",self.id))
        self.back2:hide()
        self.back1:show()
    else
        self.back1:hide()
        self.back2:show()
    end
    
end

function CollectionCellView:clearCell(event)
    self:hide()
end

function CollectionCellView:setCellHighlight(event)
    self.panel:setScale(0.96)
end

function CollectionCellView:setCellUnHighlight(event)
    self.panel:setScale(1)
end

function CollectionCellView:onCellTouched(event)
    audio.playSound(GAME_EFFECT[13])
    if self.has then
        local colect =   AppViews:fadeTo(Layers_.collectionView,"app.views.home.collection.CollectionInfoView")
        colect:showInfo(self.id)
    else
        local colect =   AppViews:fadeTo(Layers_.collectionView,"app.views.home.collection.CollectionInfoView")
        colect:showLock(tonumber(self.id))
    end
end

return CollectionCellView
