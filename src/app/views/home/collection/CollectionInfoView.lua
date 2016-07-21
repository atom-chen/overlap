local CollectionDialog = class("CollectionDialog", cc.load("mvc").ViewBase)

CollectionDialog.RESOURCE_FILENAME = "collection.collection_info"
CollectionDialog.RESOURCE_BINDING = {
    actions = {enterAni = "enter",enterEvent = nil,exitAni = nil ,exitEvent = nil}
}

function CollectionDialog:onCreate()
end


function CollectionDialog:onClick(path,node,funcName)
    if  node:getName() =="btn_ok" then
        local function btnCallback(  node,eventType  )
            AppViews:fadeBackAndClose(self)
        end
        return btnCallback

    end
end

return CollectionDialog
