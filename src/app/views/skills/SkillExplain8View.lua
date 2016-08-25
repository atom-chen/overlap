
local SkillExplain8View = class("SkillExplain8View", cc.load("mvc").ViewBase)

SkillExplain8View.RESOURCE_FILENAME = "select.skills.skill_type_8.lua"
SkillExplain8View.LOCALE_LANG_LABEL = {
    SkInfo             = _("SkInfo_8"),
}

function SkillExplain8View:onCreate()
    self:localLanguage()
    self:runAnimation("animation0",true)
end


function SkillExplain8View:onClick( path,node,funcName)
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

function SkillExplain8View:setCallBack(callback)
    self.callback = callback
end


return SkillExplain8View
