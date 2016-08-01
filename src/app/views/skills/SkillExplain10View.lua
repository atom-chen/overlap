
local SkillExplain10View = class("SkillExplain10View", cc.load("mvc").ViewBase)

SkillExplain10View.RESOURCE_FILENAME = "select.skills.skill_type_10.lua"

function SkillExplain10View:onCreate()
end


function SkillExplain10View:onClick( path,node,funcName)
    if node:getName()=="panel" then
        local function btnCallback(node,eventType)
            self:closeSelf()
        end
        return btnCallback
    end
end


return SkillExplain10View
