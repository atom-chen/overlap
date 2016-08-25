
local SkillInfoView = class("SkillInfoView", cc.load("mvc").ViewBase)

SkillInfoView.LOCALE_LANG_LABEL = {
    SkInfo             = _("SkInfo_1"),
}

SkillInfoView.OTHER = {
    SkInfo_1             = _("SkInfo_1"),
    SkInfo_2             = _("SkInfo_2"),
    SkInfo_3             = _("SkInfo_3"),
    SkInfo_4             = _("SkInfo_4"),
    SkInfo_5             = _("SkInfo_5"),
    SkInfo_6             = _("SkInfo_6"),
    SkInfo_7             = _("SkInfo_7"),
    SkInfo_8             = _("SkInfo_8"),
    SkInfo_9             = _("SkInfo_9"),
    SkInfo_10             = _("SkInfo_10"),
}

SkillInfoView.RESOURCE_FILENAME = "select.skill_info"
--SkillInfoView.RESOURCE_BINDING = {
--    actions = {enterAni = "enter",enterEvent = nil,exitAni = "exit",exitEvent = "exitEnd"}
--}

--$$$$$$$$$$$$$$$$ CONFIG $$$$$$$$$$$$$$$$$$$$$


--$$$$$$$$$$$$$$$$ ViewBase $$$$$$$$$$$$$$$$$$$$$


function SkillInfoView:onCreate()
    self:localLanguage()
end

function SkillInfoView:setSkill(skill)
    self["SkInfo"]:setString(_("SkInfo_".. skill))
    self["sk_icon"]:setSpriteFrame(string.format("icon-common-skill-%d.png",skill))
end



function SkillInfoView:onClick( path,node,funcName)
    if node:getName()=="btn_close" and funcName =="onClick" then
        local function btnCallback(node,eventType)
            audio.playSound(GAME_EFFECT[13])
            self:closeSelf()
        end
        return btnCallback
    end
end


return SkillInfoView
