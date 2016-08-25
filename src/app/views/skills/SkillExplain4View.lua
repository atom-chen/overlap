
local SkillExplain4View = class("SkillExplain4View", cc.load("mvc").ViewBase)

SkillExplain4View.RESOURCE_FILENAME = "select.skills.skill_type_4.lua"
SkillExplain4View.LOCALE_LANG_LABEL = {
    SkInfo             = _("SkInfo_4"),
}

function SkillExplain4View:onCreate()
    self:localLanguage()
    local lang = locale.defaultLang()
    self.s1:setSpriteFrame(string.format("word-%s-2.png",lang))
    self.s2:setSpriteFrame(string.format("word-%s-3.png",lang))
    self.s3:setSpriteFrame(string.format("word-%s-1.png",lang))
    
    self:runAnimation("animation0",true)
end


function SkillExplain4View:onClick( path,node,funcName)
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

function SkillExplain4View:setCallBack(callback)
    self.callback = callback
end




return SkillExplain4View
