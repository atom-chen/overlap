
local CommonMaskView = class("CommonMaskView", cc.load("mvc").ViewBase)

CommonMaskView.RESOURCE_FILENAME = "common.common_mask"

--$$$$$$$$$$$$$$$$ CONFIG $$$$$$$$$$$$$$$$$$$$$


--$$$$$$$$$$$$$$$$ ViewBase $$$$$$$$$$$$$$$$$$$$$


function CommonMaskView:onCreate()
end



--$$$$$$$$$$$$$$$$ CommonMaskView $$$$$$$$$$$$$$$$$$$$$

function CommonMaskView:_splashMask(time)
    local function onComplete()
    	self:removeSelf()
    end
    ac.execute(self.mask,ac.ccSeq(ac.ccFadeTo(time/2,255),ac.ccDelay(0.0),ac.ccFadeTo(time/2,0),ac.ccCall(onComplete)))
end

function CommonMaskView:_mask(time)
    local function onComplete()
    	self:removeSelf()
    end
    ac.ccDellayToCall(self,time,onComplete)
end



return CommonMaskView
