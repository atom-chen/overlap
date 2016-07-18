local HomeCollectionView = class("HomeCollectionView.", cc.load("mvc").ViewBase)


HomeCollectionView.RESOURCE_FILENAME = "collection.home_collection"

HomeCollectionView.SCROLLVIEW_HEITH = 965
local CollectionCellView = import(".CollectionCellView")
CollectionCellView.CELL_WIDTH  = 203
CollectionCellView.CELL_HEIGHT = 193

function HomeCollectionView:onCreate()
    local t = CollectionManager:getAllCollection()
    local data = {}
    for v=1, #t do
       local cInfo =  CollectionManager:getCollectionInfo(v)
        data[v] = {id = v,has = t[v],info = cInfo}
    end
    
    
    local  tv=   ccui.TebleView:create(data,cc.size(629,965),{height = 193,width = 203 ,cellView = CollectionCellView })
    self.tv:addChild(tv)

    local function scrollViewDidScroll(view)
        local allheight =  tv:getTableViw():getContentSize().height - 965
        local height = -tv:getTableViw():getContentOffset().y
        self:updateSlider(height/allheight)

    end
    tv:getTableViw():registerScriptHandler(scrollViewDidScroll,cc.SCROLLVIEW_SCRIPT_SCROLL)
    
    local collect,allcolt =  CollectionManager:getCollectionCount()

    self.gotcolts:setString(collect .. " / ".. allcolt)
end

function HomeCollectionView:touch(event)
end


function HomeCollectionView:onClick( path,node,funcName)
    if node:getName()=="btn_back"  then
        local function btnCallback(node,eventType)
            AppViews:fadeBackAndClose(Layers_.collectionView)
        end
        return btnCallback
    end
end


function HomeCollectionView:updateSlider(percent)
    if percent<0 then
        percent = 0
    elseif percent>1 then
        percent = 1
    end
    self.slider:setPositionY(percent*(HomeCollectionView.SCROLLVIEW_HEITH-436) + 436)
end

return HomeCollectionView
