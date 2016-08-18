
local MyApp = class("MyApp", cc.load("mvc").AppBase)

function MyApp:onCreate()
    math.randomseed(os.time())

    if helper.isPhone() then
        print("#######################")
        analytic:init(""..device:getDeviceUid(), DNP_APP.version ,DNP_EVENT.flurry)
        gamer:init()
    end
end



return MyApp
