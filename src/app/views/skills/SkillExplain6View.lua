
local SkillExplain6View = class("SkillExplain6View", cc.load("mvc").ViewBase)

SkillExplain6View.RESOURCE_FILENAME = "select.skills.skill_type_6.lua"
SkillExplain6View.LOCALE_LANG_LABEL = {
    SkInfo             = _("SkInfo_6"),
}

function SkillExplain6View:onCreate()
    self:localLanguage()
    
    self:runAnimation("animation0",true)
end


function SkillExplain6View:onClick( path,node,funcName)
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

function SkillExplain6View:setCallBack(callback)
    self.callback = callback
end



return SkillExplain6View
