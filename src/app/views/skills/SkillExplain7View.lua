
local SkillExplain7View = class("SkillExplain7View", cc.load("mvc").ViewBase)

SkillExplain7View.RESOURCE_FILENAME = "select.skills.skill_type_7.lua"
SkillExplain7View.LOCALE_LANG_LABEL = {
    SkInfo             = _("SkInfo_7"),
}

function SkillExplain7View:onCreate()
    self:localLanguage()
    
    self:runAnimation("animation0",true)
end


function SkillExplain7View:onClick( path,node,funcName)
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

function SkillExplain7View:setCallBack(callback)
    self.callback = callback
end



return SkillExplain7View
