
local SkillExplain8View = class("SkillExplain8View", cc.load("mvc").ViewBase)

SkillExplain8View.RESOURCE_FILENAME = "select.skills.skill_type_8.lua"

function SkillExplain8View:onCreate()
end


function SkillExplain8View:onClick( path,node,funcName)
    if node:getName()=="panel" then
        local function btnCallback(node,eventType)
            self:closeSelf()
        end
        return btnCallback
    end
end


return SkillExplain8View
