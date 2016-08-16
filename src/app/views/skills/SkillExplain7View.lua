
local SkillExplain7View = class("SkillExplain7View", cc.load("mvc").ViewBase)

SkillExplain7View.RESOURCE_FILENAME = "select.skills.skill_type_7.lua"
SkillExplain7View.LOCALE_LANG_LABEL = {
    SkInfo             = _("SkInfo_1"),
}

function SkillExplain7View:onCreate()
    self:localLanguage()
end


function SkillExplain7View:onClick( path,node,funcName)
    if node:getName()=="panel" then
        local function btnCallback(node,eventType)
            self:closeSelf()
        end
        return btnCallback
    end
end


return SkillExplain7View
