
---------------------------
--验证购买服务器验证
--
--@type action.RankHighestAction
local RankCommitAction = class("action.RankCommitAction",require("fmw.action.Action"))


function RankCommitAction:ctor()
    self.super:ctor()
    self.typ = 0
end

---------------------------
--动作执行接口
--@function [parent=#PayValidateAction] action
--@param self
--@return Message#Message 返回消息
function RankCommitAction:action()
    printDump(self:unpack())
    
    gameUtils.updatePlayerRankData(self:unpack())
    return nil
end

return RankCommitAction
    