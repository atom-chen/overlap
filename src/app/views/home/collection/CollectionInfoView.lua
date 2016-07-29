local CollectionDialog = class("CollectionDialog", cc.load("mvc").ViewBase)

CollectionDialog.RESOURCE_FILENAME = "collection.collection_info"
CollectionDialog.RESOURCE_BINDING = {
    actions = {enterAni = "enter",enterEvent = nil,exitAni = nil ,exitEvent = nil}
}

CollectionDialog.LOCALE_LANG_LABEL = {
    Name        = _("OK"),
    info        = _("OK"),
}

function CollectionDialog:onCreate()
    self:localLanguage()
end


function CollectionDialog:showInfo(id)
   local infos =   helper.split(_("Collect_"..id),";")
    print(_("Collect_"..id))
    self.Name:setString(infos[1])
    self.info:setString(infos[2])
end


function CollectionDialog:onClick(path,node,funcName)
    if  node:getName() =="btn_ok" then
        local function btnCallback(node,eventType)
            AppViews:fadeBackAndClose(self)
        end
        return btnCallback

    end
end

return CollectionDialog
