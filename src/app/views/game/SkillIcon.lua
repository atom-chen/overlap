
local SkillIcon = class("SkillIcon", cc.load("mvc").ViewBase)

SkillIcon.RESOURCE_FILENAME = "game.skill_icon.lua"


function SkillIcon:onCreate()
    self:get():move(0,0)
end

function SkillIcon:setSkill(skill)
    local tex = string.format("icon-common-skill-%d.png",skill)
    self.btn_skill:loadTextures(tex,tex,tex,1)

    self["info"]:setString(_("SkInfo_".. skill))
    self.skill = skill
end

function SkillIcon:fadeIn()
    self.btn_skill:setOpacity(0)
    ac.execute(self.btn_skill,ac.ccFadeTo(0.4,255))
end

function SkillIcon:fadeOut()
    ac.execute(self.btn_skill,ac.ccFadeTo(0.4,0))
end


function SkillIcon:onClick( path,node,funcName)
    if node:getName()=="btn_skill" then
        local function btnCallback(node,eventType  )
            if eventType == ccui.TouchEventType.began then
                --                self.info:show()
                self.skillView =   AppViews:addViewByName("app.views.game.SkillInfoView")
                self.skillView:setSkill(self.skill)
            elseif eventType == ccui.TouchEventType.moved then
            elseif eventType == ccui.TouchEventType.ended then
                --                self.info:hide()
                if self.skillView then
                    self.skillView:removeSelf()
                    self.skillView = nil
                end
            elseif eventType == ccui.TouchEventType.canceled then
            --                self.info:hide()
                if self.skillView then
                    self.skillView:removeSelf()
                    self.skillView = nil
                end
            end
        end
        return btnCallback
    end

end

return SkillIcon
