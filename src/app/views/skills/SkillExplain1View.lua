
local SkillExplain1View = class("SkillExplain1View", cc.load("mvc").ViewBase)

SkillExplain1View.RESOURCE_FILENAME = "select.skills.skill_type_1.lua"
SkillExplain1View.LOCALE_LANG_LABEL = {
    SkInfo             = _("SkInfo_1"),
}

function SkillExplain1View:onCreate()
    self:localLanguage()
    
    self:runAnimation("animation0",true)
end

function SkillExplain1View:onClick( path,node,funcName)
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


function SkillExplain1View:setCallBack(callback)
    self.callback = callback
end

return SkillExplain1View
