--[[
定时器类
@author xianlinli@gmail.com
]]
local timer = {
    _scheduler = cc.Director:getInstance():getScheduler(),
    _timers = {}
}

--[[
启动定时器
@param callback 回调方法
@param interval 间隔
@param runCount 运行次数
@param data 数据
@return timerId
]]
function timer:start(timerName,callback, interval, runCount, data)
    local timerId
    local onTick = function(dt)
        callback(dt, data, timerId)
        if runCount ~= nil then
            runCount = runCount - 1;
            if runCount <= 0 then -- 达到指定运行次数,杀掉
                self:kill(timerName)
            end
        end
    end
    timerId = self._scheduler:scheduleScriptFunc(onTick, interval, false)
    self._timers[timerName] = timerId;
    return timerId
end

--[[
启动一个只执行一次的定时器
@param callback 回调方法
@param data 数据
]]
function timer:runOnce(callback, data)
    self:start(callback, 0, 1, data)
end

--[[
杀掉指定定时器
@param timerId 定时器ID
]]
function timer:kill(timerName)
    if self._timers[timerName] then
        self._scheduler:unscheduleScriptEntry(self._timers[timerName])
        self._timers[timerName] = nil;
    end
end

--[[
杀掉所有定时器
]]
function timer:killAll()
    for timerId, flag in pairs(self._timers) do
        self:kill(timerId)
    end
end

return timer
