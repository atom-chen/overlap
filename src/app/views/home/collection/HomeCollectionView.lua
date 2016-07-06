local HomeCollectionView = class("HomeCollectionView.", cc.load("mvc").ViewBase)


HomeCollectionView.RESOURCE_FILENAME = "collection.home_collection"

HomeCollectionView.SCROLLVIEW_HEITH = 965
local CollectionCellView = import(".CollectionCellView")
CollectionCellView.CELL_WIDTH  = 203
CollectionCellView.CELL_HEIGHT = 193

function HomeCollectionView:onCreate()
    local t = {}
    for v=1, 100 do
        t[v] = v
    end
    local  tv=   ccui.TebleView:create(t,cc.size(629,965),{height = 193,width = 203 ,cellView = CollectionCellView })
    self.tv:addChild(tv)
end

function HomeCollectionView:touch(event)
end


function HomeCollectionView:onClick( path,node,funcName)
    if node:getName()=="btn_back"  then
        local function btnCallback(node,eventType)
            gameUtils.transFadeOut(self,Layers_.home)
        end

        return btnCallback
    end
end



return HomeCollectionView
