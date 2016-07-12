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
    self.id  = data[1]
    self.has = data[2]
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
    
end

function CollectionCellView:setCellUnHighlight(event)
    
end

function CollectionCellView:onCellTouched(event)
    AppViews:addViewByName("app.views.home.collection.CollectionInfoView")
    AppViews:getView(Layers_.collectionView):hide()
    
end

return CollectionCellView
