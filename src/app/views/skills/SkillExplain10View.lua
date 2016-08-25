
local SkillExplain10View = class("SkillExplain10View", cc.load("mvc").ViewBase)

SkillExplain10View.RESOURCE_FILENAME = "select.skills.skill_type_10.lua"
SkillExplain10View.LOCALE_LANG_LABEL = {
    SkInfo             = _("SkInfo_10"),
}

function SkillExplain10View:onCreate()
    self:localLanguage()
    self:runAnimation("animation0",true)
end


function SkillExplain10View:onClick( path,node,funcName)
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

function SkillExplain10View:setCallBack(callback)
    self.callback = callback
end



return SkillExplain10View
