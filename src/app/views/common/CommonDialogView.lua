
local CommonDialogView = class("CommonDialogView", cc.load("mvc").ViewBase)

CommonDialogView.LOCALE_LANG_LABEL = {
    OK             = _("OK"),
    Text             = _("UNLOCK_ENDLESS"),
}

CommonDialogView.RESOURCE_FILENAME = "common.common_dialog"
CommonDialogView.RESOURCE_BINDING = {
    actions = {enterAni = "enter",enterEvent = nil,exitAni = "exit",exitEvent = "exitEnd"}
}

--$$$$$$$$$$$$$$$$ CONFIG $$$$$$$$$$$$$$$$$$$$$


--$$$$$$$$$$$$$$$$ ViewBase $$$$$$$$$$$$$$$$$$$$$


function CommonDialogView:onCreate()
    self:localLanguage()
end


function CommonDialogView:showContent(content)
    self.Text:setString(content)
end


function CommonDialogView:onClick( path,node,funcName)
    if node:getName()=="btn_close" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            audio.playSound(GAME_EFFECT[13])
            self:closeSelf()
        end
        return btnCallback
    end
end


return CommonDialogView
