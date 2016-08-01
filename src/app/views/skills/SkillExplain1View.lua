
local SkillExplain1View = class("SkillExplain1View", cc.load("mvc").ViewBase)

SkillExplain1View.RESOURCE_FILENAME = "select.skills.skill_type_1.lua"

function SkillExplain1View:onCreate()
end

function SkillExplain1View:onClick( path,node,funcName)
    if node:getName()=="panel" then
        local function btnCallback(node,eventType)
            self:closeSelf()
        end
        return btnCallback
    end
end


return SkillExplain1View
