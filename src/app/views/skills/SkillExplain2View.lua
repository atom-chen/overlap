
local SkillExplain2View = class("SkillExplain2View", cc.load("mvc").ViewBase)

SkillExplain2View.RESOURCE_FILENAME = "select.skills.skill_type_2.lua"
SkillExplain2View.LOCALE_LANG_LABEL = {
    SkInfo             = _("SkInfo_1"),
}

function SkillExplain2View:onCreate()
    self:localLanguage()
end

function SkillExplain2View:onClick( path,node,funcName)
    if node:getName()=="panel" then
        local function btnCallback(node,eventType)
            self:closeSelf()
        end
        return btnCallback
    end
end


return SkillExplain2View
