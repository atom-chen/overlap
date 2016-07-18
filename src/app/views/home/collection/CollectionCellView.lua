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
        self.collect:setSpriteFrame("collection-1.png")
    else
        self.collect:setSpriteFrame("sp-collection-lock.png")
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
    if self.has then
        AppViews:fadeTo(Layers_.collectionView,"app.views.home.collection.CollectionInfoView")
    end
end

return CollectionCellView
