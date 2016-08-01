
local SkillExplain5View = class("SkillExplain5View", cc.load("mvc").ViewBase)

SkillExplain5View.RESOURCE_FILENAME = "select.skills.skill_type_5.lua"

function SkillExplain5View:onCreate()
end

function SkillExplain5View:onClick( path,node,funcName)
    if node:getName()=="panel" then
        local function btnCallback(node,eventType)
            self:closeSelf()
        end
        return btnCallback
    end
end

return SkillExplain5View
