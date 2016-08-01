
local SkillExplain9View = class("SkillExplain9View", cc.load("mvc").ViewBase)

SkillExplain9View.RESOURCE_FILENAME = "select.skills.skill_type_9.lua"

function SkillExplain9View:onCreate()
end


function SkillExplain9View:onClick( path,node,funcName)
    if node:getName()=="panel" then
        local function btnCallback(node,eventType)
            self:closeSelf()
        end
        return btnCallback
    end
end


return SkillExplain9View
