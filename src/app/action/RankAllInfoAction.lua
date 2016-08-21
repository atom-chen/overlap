
---------------------------
--验证购买服务器验证
--
--@type action.RankHighestAction
local RankPlayerInfoAction = class("action.RankPlayerInfoAction",require("fmw.action.Action"))


function RankPlayerInfoAction:ctor()
    self.super:ctor()
    self.typ = 0
end

---------------------------
--动作执行接口
--@function [parent=#PayValidateAction] action
--@param self
--@return Message#Message 返回消息
function RankPlayerInfoAction:action()
    printDump(self:unpack())
    
    gameUtils.updateAllRankData(self:unpack())
    return nil
end

return RankPlayerInfoAction
    