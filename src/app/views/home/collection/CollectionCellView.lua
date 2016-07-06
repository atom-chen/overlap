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
    self.id  = data
end

function CollectionCellView:clearCell(event)
    self:hide()
end

function CollectionCellView:setCellHighlight(event)
    print("setCellHighlight"..self.id)
    
end

function CollectionCellView:setCellUnHighlight(event)
    print("setCellUnHighlight"..self.id)
    
end

function CollectionCellView:onCellTouched(event)
    print("onCellTouched"..self.id)
    AppViews:addViewByName("app.views.home.collection.CollectionInfoView")
--    local content = CollectionInfoView:create()
--    gameUtils.showCommonDialog(content)
    
end

return CollectionCellView
