
-- 0 - disable debug info, 1 - less debug info, 2 - verbose debug info
DEBUG = 2

--######## 应用区域 #######--
DNP_APP = {
    appName = "OverLap",
    version = 1.1,

    id = {
        dnp = 1005,                 -- DONOPO应用内部编号
        ios = "1087226557",              -- AppStore编码
        android = "com.donopo.helloKitty",   -- GooglePlay编码
    },

    storeUrl = {
        ios     = "itms-apps://itunes.apple.com/app/id%s",                -- iOS 商店地址
        android = "https://play.google.com/store/apps/details?id=%s",     -- Android商店地址
    },

    slotKey = "D*N@P#L0NGL1FE",         -- 存档加密
    confuseKey = 10240806,              -- 内存混淆
    gcInterval = 10,                    -- 垃圾回收频度(秒)
    gcBlock = 5000,                     -- 垃圾回收颗粒度(单元)
    netkey = "ik9HzYoR&ovs2%tE",        -- 网络通讯加密
}

DNP_PRODUCT = {
    Overlap_600 = 1,
    Overlap_1200 = 2,
    Overlap_1800 = 3,
    Overlap_3000 = 4,
    Overlap_6800 = 5,
    Overlap_12800 = 6,
    Overlap_32800 = 7,
    Overlap_99800 = 8,
}

DNP_CHANNEL = {
    appStore = 1,
    googlePlay = 2,
}

DNP_SERVER = {
    httpServer = "http://127.0.0.1:8000",
    websocketServer = "http://127.0.0.1:8000",
}

DNP_RANK = {
    rank_lv1 = 101,
    rank_lv2 = 102,
    rank_lv3 = 103,
    rank_lv4 = 104,
    rank_lv5 = 105,
    rank_lv6 = 106,
    
    rank_obs_lv1 = 111,
    rank_obs_lv2 = 112,
    rank_obs_lv3 = 113,
    rank_obs_lv4 = 114,
    rank_obs_lv5 = 115,
    rank_obs_lv6 = 116,
}

DNP_GAME = {
    --    default_scene = "PlaneScene",
    ios = {
        leaderboards="MaryXHighScore;MaryXHighRankClassic;MaryXHighRankChallenge",
        achievements= "White Queen;Mary X",
        separate = ";",
    },
    iap = {
        ios = {"Overlap_600","Overlap_1200","Overlap_1800","Overlap_3000","Overlap_6800","Overlap_12800","Overlap_32800","Overlap_99800"}
    },

    payChannel = {
        weixin = 2,
        zhifubao = 3,
        appstore = 1,
    }
}

--######## 广告区域 #######--
DNP_AD = {
    platform = {unity="unity",vungle = "vungle", unity = "unity"},
    target = {
        vungle = "vungle",
--        gdt = "gdt",
--        unity = "unity",
    },

    vungle = {
        --        android = "com.donopo.helloKitty", --ol
        ios = "57b6d20eb199bf167f00000c", --ol
--        ios = "56e633b62e4d11793d00000a", --kt
    },

    unity = {
        android = "com.donopo.helloKitty", --kt
        ios = "1070802", --kt
    },

}


--######## 分享区域 #######--
DNP_SHARE = {
    wxScene = {
        chat = 0,
        friends = 1,
    },
    usingWeixin = false,                -- 是否采用微信分享
    wxAppId = "wx0ca6563dedb4f77d",      --kt
    wxSecret = "bee696f2b18c4572837cafc2db4ff217",   --kt
}


--######## 日志区域 #######--
DNP_EVENT = {
    flurry = {
        ios     = "967FPWMY789FXZMDKBXV",
        android = "TB4STFPW85STXPH2Y8YB"
    }
}
DNP_DEBUG = {
    count = 0
}


--######## 调试区域 #######--
DNP_USE_FLURRY = true

-- use framework, will disable all deprecated API, false - use legacy API
CC_USE_FRAMEWORK = true

-- show FPS on screen
CC_SHOW_FPS = false

-- disable create unexpected global variable
CC_DISABLE_GLOBAL = false

-- for module display
CC_DESIGN_RESOLUTION = {
    width = 750,
    height = 1334,
    autoscale = "FIXED_HEIGHT",
    callback = function(framesize)
        local ratio = framesize.width / framesize.height
        if ratio >= 768/1024 then
            -- iPad 768*1024(1536*2048) is 4:3 screen
            return {autoscale = "FIXED_HEIGHT"}
        end
    end
}
