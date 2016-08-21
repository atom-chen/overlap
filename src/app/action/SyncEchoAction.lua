
---------------------------
--消息异步回调测试 (1)
--
--@type action.SyncEchoAction
local SyncEchoAction = class("action.SyncEchoAction",require("fmw.action.Action"))

function SyncEchoAction:ctor()
    self.super:ctor()
    self.typ = 1
    self.method = ACTION_HTTP
end

---------------------------
--动作执行接口
--@function [parent=#SyncEchoAction] action
--@param self
--@return Message#Message 返回消息
function SyncEchoAction:action()
    printDump(self.body)
    return nil
end


return SyncEchoAction