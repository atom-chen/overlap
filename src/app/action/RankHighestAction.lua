
---------------------------
--验证购买服务器验证
--
--@type action.RankHighestAction
local RankHighestAction = class("action.RankHighestAction",require("fmw.action.Action"))


function RankHighestAction:ctor()
    self.super:ctor()
    self.typ = 0
end

---------------------------
--动作执行接口
--@function [parent=#PayValidateAction] action
--@param self
--@return Message#Message 返回消息
function RankHighestAction:action()
    printDump(self:unpack())
    return nil
end

return RankHighestAction
    