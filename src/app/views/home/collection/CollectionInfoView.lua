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
    self.Name:setString(infos[1])
    self.info:setString(infos[2])
    
    cc.SpriteFrameCache:getInstance():addSpriteFrames("Resource/atlas/collct.plist")
    self.collect:setSpriteFrame(string.format("collection-%d.png",id))
end
function CollectionDialog:showLock(id)
    local infos =   helper.split(_("Collect_"..id),";")
    self.Name:setString(infos[1])
    
    local uncock = CollectionManager:howUnlock(id)
    self.info:setString(uncock)

    self.collect:hide()
    self.lock:show()
end


function CollectionDialog:onClick(path,node,funcName)
    if  node:getName() =="btn_ok" then
        local function btnCallback(node,eventType)
            audio.playSound(GAME_EFFECT[13])
            AppViews:fadeBackAndClose(self)
        end
        return btnCallback

    end
end

return CollectionDialog
