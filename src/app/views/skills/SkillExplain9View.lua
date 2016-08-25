
local SkillExplain9View = class("SkillExplain9View", cc.load("mvc").ViewBase)

SkillExplain9View.RESOURCE_FILENAME = "select.skills.skill_type_9.lua"
SkillExplain9View.LOCALE_LANG_LABEL = {
    SkInfo             = _("SkInfo_9"),
}

function SkillExplain9View:onCreate()
    self:localLanguage()
    self:runAnimation("animation0",true)
end

function SkillExplain9View:onClick( path,node,funcName)
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

function SkillExplain9View:setCallBack(callback)
    self.callback = callback
end



return SkillExplain9View
