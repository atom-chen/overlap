local CollectionInfoView = class("CollectionInfoView", cc.load("mvc").ViewBase)

CollectionInfoView.RESOURCE_FILENAME = "collection.collection_info"
CollectionInfoView.RESOURCE_BINDING = {
    actions = {enterAni = "enter",enterEvent = nil,exitAni = nil ,exitEvent = nil}
}


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
