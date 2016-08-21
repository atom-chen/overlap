
---------------------------
-- 全局计时器、计划任务的全局模块
--
-- @module scheduler
local scheduler = class("scheduler")

local sharedScheduler = cc.Director:getInstance():getScheduler()

function scheduler:ctor()
    if CC_GLOBEL_SCHEDULER_HANDLES then
        self:unscheduleAll()
    else
        CC_GLOBEL_SCHEDULER_HANDLES = {}
    end
end

---------------------------
--计划一个全局帧事件回调，并返回该计划的句柄。
--全局帧事件在任何场景中都会执行，因此可以在整个应用程序范围内实现较为精确的全局计时器。
--该函数返回的句柄用作 scheduler.unscheduleGlobal() 的参数，可以取消指定的计划。 
--
--@function [parent=#scheduler] scheduleUpdateGlobal
--@param function#function listener 回调函数
--@return mixed#mixed schedule句柄
function scheduler.scheduleUpdateGlobal(listener)
    local handle = sharedScheduler:scheduleScriptFunc(listener, 0, false)
    CC_GLOBEL_SCHEDULER_HANDLES[handle]=handle
    return handle
end


---------------------------
--计划一个以指定时间间隔执行的全局事件回调，并返回该计划的句柄。 
-- local function onInterval(dt)
-- end
-- 每 0.5 秒执行一次 onInterval()
-- local handle = scheduler.scheduleGlobal(onInterval, 0.5) 
--
--@function [parent=#scheduler] scheduleGlobal
--@param function#function listener 回调函数
--@param number#number interval 间隔时间
--@return mixed#mixed schedule句柄
function scheduler.scheduleGlobal(listener, interval)
    local handle = sharedScheduler:scheduleScriptFunc(listener, interval, false)
    CC_GLOBEL_SCHEDULER_HANDLES[handle]=handle
    return handle
end


---------------------------
--取消一个全局计划 
--scheduler.unscheduleGlobal() 的参数就是 scheduler.scheduleUpdateGlobal() 和 scheduler.scheduleGlobal() 的返回值。
--
--@function [parent=#scheduler] unscheduleGlobal
--@param mixed#mixed handle description1
function scheduler.unscheduleGlobal(handle)
    table.remove(CC_GLOBEL_SCHEDULER_HANDLES, handle)
    sharedScheduler:unscheduleScriptEntry(handle)
end


---------------------------
--取消所有全局计划
--
--@function [parent=#scheduler] unscheduleAll
function scheduler.unscheduleAll()
    for key, value in pairs(CC_GLOBEL_SCHEDULER_HANDLES) do
        scheduler.unscheduleGlobal(value)
    end
    CC_GLOBEL_SCHEDULER_HANDLES = {}
end


---------------------------
--计划一个全局延时回调，并返回该计划的句柄。
--scheduler.performWithDelayGlobal() 会在等待指定时间后执行一次回调函数，然后自动取消该计划。
--
--@function [parent=#scheduler] performWithDelayGlobal
--@param function#function listener 回调函数
--@param number#number time 延迟时间
--@return mixed#mixed schedule句柄
function scheduler.performWithDelayGlobal(listener, time)
    local handle
    handle = sharedScheduler:scheduleScriptFunc(function()
        scheduler.unscheduleGlobal(handle)
        listener()
    end, time, false)
    CC_GLOBEL_SCHEDULER_HANDLES[handle]=handle
    return handle
end

return scheduler
