
local SkillExplain5View = class("SkillExplain5View", cc.load("mvc").ViewBase)

SkillExplain5View.RESOURCE_FILENAME = "select.skills.skill_type_5.lua"
SkillExplain5View.LOCALE_LANG_LABEL = {
    SkInfo             = _("SkInfo_5"),
}

function SkillExplain5View:onCreate()
    self:localLanguage()
    
    self:runAnimation("animation0",true)
end

function SkillExplain5View:onClick( path,node,funcName)
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

function SkillExplain5View:setCallBack(callback)
    self.callback = callback
end

return SkillExplain5View
