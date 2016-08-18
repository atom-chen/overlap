
---------------------------
--消息异步回调测试 (1)
--
--@type action.LoginAction
local LoginAction = class("action.player.LoginAction",require("fmw.action.Action"))


---------------------------
--动作执行接口
--@function [parent=#LoginActionAction] action
--@param self
--@return Message#Message 返回消息
function LoginAction:action()
    local cmsgpack = require 'cmsgpack'
    local data = cmsgpack.unpack(self.body)


    return nil
end

return LoginAction