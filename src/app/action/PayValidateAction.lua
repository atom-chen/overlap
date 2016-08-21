
---------------------------
--验证购买服务器验证
--
--@type action.PayValidateAction
local PayValidateAction = class("action.PayValidateAction",require("fmw.action.Action"))


function PayValidateAction:ctor()
    self.super:ctor()
    self.typ = 1
end

---------------------------
--动作执行接口
--@function [parent=#PayValidateAction] action
--@param self
--@return Message#Message 返回消息
function PayValidateAction:action()
    printDump(self:unpack())
    return nil
end

return PayValidateAction
      