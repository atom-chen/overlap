
local SkillExplain2View = class("SkillExplain2View", cc.load("mvc").ViewBase)

SkillExplain2View.RESOURCE_FILENAME = "select.skills.skill_type_2.lua"

function SkillExplain2View:onCreate()
end


function SkillExplain2View:onClick( path,node,funcName)
    if node:getName()=="panel" then
        local function btnCallback(node,eventType)
            self:closeSelf()
        end
        return btnCallback
    end
end


return SkillExplain2View
