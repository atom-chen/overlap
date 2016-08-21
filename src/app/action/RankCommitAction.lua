
---------------------------
--验证购买服务器验证
--
--@type action.RankCommitAction
local RankCommitAction = class("action.RankCommitAction",require("fmw.action.Action"))


function RankCommitAction:ctor()
    self.super:ctor()
    self.typ = 1
end

---------------------------
--动作执行接口
--@function [parent=#RankCommitAction] action
--@param self
--@return Message#Message 返回消息
function RankCommitAction:action()
    printDump(self:unpack())
    return nil
end

return RankCommitAction
    