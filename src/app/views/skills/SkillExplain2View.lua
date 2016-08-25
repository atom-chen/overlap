
local SkillExplain2View = class("SkillExplain2View", cc.load("mvc").ViewBase)

SkillExplain2View.RESOURCE_FILENAME = "select.skills.skill_type_2.lua"
SkillExplain2View.LOCALE_LANG_LABEL = {
    SkInfo             = _("SkInfo_2"),
}

function SkillExplain2View:onCreate()
    self:localLanguage()
    self:runAnimation("animation0",true)
end

function SkillExplain2View:onClick( path,node,funcName)
    if node:getName()=="panel" then
        local function btnCallback(node,eventType)
            if self.callback then
                self.callback()
                self.callback = nil
            end

            self:closeSelf()
        end
        return btnCallback
    end
end

function SkillExplain2View:setCallBack(callback)
    self.callback = callback
end


return SkillExplain2View
