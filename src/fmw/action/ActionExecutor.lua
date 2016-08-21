
---------------------------
--动作管理器，属于全局对象句柄
--
--@type ActionExecutor
local ActionExecutor = class("ActionExecutor")

function ActionExecutor:ctor()
    self.httpserver = ""
    self.actions   = {}
    self.callbacks = {}
end

function ActionExecutor:setHttpServer(url)
    self.httpserver = url
end


---------------------------
--通过动作Id获取动作脚本
--@function [parent=#ActionExecutor] get
--@param self
--@param integer#integer aid 动作编码
--@return Action#Action 动作脚本
function ActionExecutor:get(aid)
    local action = require(self.actions[aid]).new()
    action.aid = aid
    return action
end

---------------------------
--从网络过来的动作包，执行动作
--@function [parent=#ActionExecutor] netcall
--@param self
--@param number#number aid ActionId
--@param number#number idx Index
--@param number#number msg MessageId
--@param number#number len Length
--@param string#string body Body
function ActionExecutor:netcall(aid, idx, msg, typ, len, body)
    local action = self:get(aid)
    action:setMessage(aid, idx, msg, typ, len, body)
    local message = action:action()
    if nil ~= message then
        self:write(message)
    end
end


---------------------------
--通过动作Id直接执行动作脚本
--@function [parent=#ActionExecutor] execute
--@param self
--@param integer#integer aid 动作编码
function ActionExecutor:execute(aid,content,callback)
    self.callbacks[aid] = nil

    local message = self:get(aid)
    message.aid = aid
    if type(content) == "table" then
        message:writeTable(content)
    elseif type(content) == "string" then
        message:writeString(content)
    elseif type(content) == "number" then
        message:writeInt(content)
    end
    
    if message then
        if callback then
            self.callbacks[aid] = callback
        end
        self:write(message)
    end
end


---------------------------
--通过动作Id直接执行动作脚本
--@function [parent=#ActionExecutor] run
--@param self
--@param integer#integer aid 动作编码
function ActionExecutor:run(message,callback)
    self.callbacks[message.aid] = nil

    if message then
        if callback then
            self.callbacks[message.aid] = callback
        end
        self:write(message)
    end
end


---------------------------
--直接执行回调函数
--@function [parent=#ActionExecutor] excuteCallBack
--@param self
--@param number#number action 动作id
--@param string#string result 回调内容
function ActionExecutor:callback(action,result)
    if self.callbacks[action.aid] then
        self.callbacks[action.aid](result)
    end
end



---------------------------
--执行消息的网络请求
--@function [parent=#ActionExecutor] excuteCallBack
--@param self
--@param Message#Message message 执行消息
function ActionExecutor:write(message)

    local function callbackHttp(xhr)

        -- 网络出错,或者网络超时都会造成response为空
        if xhr.response == "" then
            return
        end
        
        local ba = require("fmw.action.ByteArray").new()
        ba:writeBuf(xhr.response)
        ba:setPos(1)
        local ignore = ba:readByte()
        local aid = ba:readShort()
        local idx = ba:readInt()
        local msg = ba:readInt()
        local typ = ba:readShort()
        local len = ba:readShort()
        local body = ba:readStringBytes(len)
        if typ > 0 and len > 0 then        
            body = crypto.decryptXXTEA(body,DNP_APP.netkey)
        end        

        if nil ~= aid and 0 ~= aid then
            self:netcall(aid,idx,msg,typ,len, body)
        end
    end

    if message.method == ACTION_HTTP then
        http:post(self.httpserver, message:read(), callbackHttp)
	end
	 
end

return ActionExecutor