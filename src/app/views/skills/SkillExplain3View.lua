
local SkillExplain3View = class("SkillExplain3View", cc.load("mvc").ViewBase)

SkillExplain3View.RESOURCE_FILENAME = "select.skills.skill_type_3.lua"
SkillExplain3View.LOCALE_LANG_LABEL = {
    SkInfo             = _("SkInfo_3"),
}

function SkillExplain3View:onCreate()
    self:localLanguage()
    local lang = locale.defaultLang()
    self.s1:setSpriteFrame(string.format("word-%s-1.png",lang))
    self.s2:setSpriteFrame(string.format("word-%s-2.png",lang))
    self.s3:setSpriteFrame(string.format("word-%s-3.png",lang))
    
    self:runAnimation("animation0",true)
    
end


function SkillExplain3View:onClick( path,node,funcName)
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

function SkillExplain3View:setCallBack(callback)
    self.callback = callback
end


return SkillExplain3View
