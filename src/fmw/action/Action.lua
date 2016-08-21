
---------------------------
--动作执行类
--
--@type Action
local Action = class("Action",require("fmw.action.Message").new())

ACTION_HTTP = 1
ACTION_TCP = 2
ACTION_WEBSOCK = 3
ACTION_UDP = 4

function Action:ctor()
    self.super:ctor()
    self.mpack = require 'cmsgpack'
    self.method = ACTION_HTTP
end

---------------------------
--动作执行接口
--@function [parent=#Action] action
--@param self
--@return Message#Message 返回消息
function Action:action()
	
end


---------------------------
--设置动作消息接口，由动作管理器植入
--@function [parent=#Action] setMessage
--@param self
--@param number#number index 绑定消息
--@param number#number msg 绑定消息
--@param mixed#mixed body 绑定消息
function Action:setMessage(aid, idx, msg, typ, len, body)
    self.aid = aid
    self.idx = idx	
    self.msg = msg
    self.typ = typ
    self.len = len
    self.body = body	
end

---------------------------
--动作回调的方式
--@function [parent=#Action] unpack
--@param self
--@return mixed#mixed 解包
function Action:unpack()
    return self.mpack.unpack(self.body)
end


return Action