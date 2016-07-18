local CollectionInfoView = class("CollectionInfoView", cc.load("mvc").ViewBase)

CollectionInfoView.RESOURCE_FILENAME = "collection.collection_info"

function CollectionInfoView:onCreate()
end


function CollectionInfoView:onClick( path,node,funcName)
    if  node:getName() =="btn_ok" then
        local function btnCallback(  node,eventType  )
           self:closeSelf()
        end
        return btnCallback

    end
end

return CollectionInfoView
