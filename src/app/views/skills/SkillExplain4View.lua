
local SkillExplain4View = class("SkillExplain4View", cc.load("mvc").ViewBase)

SkillExplain4View.RESOURCE_FILENAME = "select.skills.skill_type_4.lua"

function SkillExplain4View:onCreate()
    local lang = locale.defaultLang()
    self.word1:setSpriteFrame(string.format("word-%s-1.png",lang))
    self.word2:setSpriteFrame(string.format("word-%s-2.png",lang))
    self.word3:setSpriteFrame(string.format("word-%s-3.png",lang))
end


function SkillExplain4View:onClick( path,node,funcName)
    if node:getName()=="panel" then
        local function btnCallback(node,eventType)
            self:closeSelf()
        end
        return btnCallback
    end
end



return SkillExplain4View
