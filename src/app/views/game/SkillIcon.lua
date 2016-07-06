
local SkillIcon = class("SkillIcon", cc.load("mvc").ViewBase)

SkillIcon.RESOURCE_FILENAME = "game.skill_icon.lua"


function SkillIcon:onCreate()
    self:get():move(0,0)
end

function SkillIcon:setSkill(skill)
    local tex = string.format("icon-common-skill-%d.png",skill)
    self.btn_skill:loadTextures(tex,tex,tex,1)
end




function SkillIcon:onClick( path,node,funcName)
    if node:getName()=="btn_skill" then
        local function btnCallback(node,eventType  )
            if eventType == ccui.TouchEventType.began then
                self.info:show()
            elseif eventType == ccui.TouchEventType.moved then
            elseif eventType == ccui.TouchEventType.ended then
                self.info:hide()
            elseif eventType == ccui.TouchEventType.canceled then
                self.info:hide()
            end
        end
        return btnCallback
    end

end

return SkillIcon
