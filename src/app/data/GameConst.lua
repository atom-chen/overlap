--#################### WORD ######################
--游戏存储数据常量
Sloters_ = {
    shapeInfo = "shapeInfo",
    localScore = "localScore",
    last_mode = "last_mode,",
    last_page = "last_page,",
    last_page_travel = "last_page_travel,",
    last_travel = "last_travel,",
    
    unlock_new = "unlock_new",
    new_record = "new_record",


    sound_off     = "sound_off",
    icloud_off    = "icloud_off",
    level_info    = "level_info",    --关卡信息
    collections   = "collections",   --收集
    collections_show   = "collections_show",   --收集
}

Layers_ = {
    mainScene        = "MainScene",
    hud              = "hudView",
    home             = "homeView",
    select           = "selectView",
    travel           = "travelView",
    config           = "configView",
    prepare          = "prepareView",
    game             = "gameView",
    ground           = "groundView",
    pause            = "pauseView",
    result           = "resultView",
    setting          = "settingView",
    gameController   = "gameController",
    collectionView   = "collectionView"
}

--#################### CONST ######################
--游戏中定义的一些常量数据，便于修改使用，属于GAME范畴

--单条边的宽度，一个小正方形的边长
GRID_BORDER = 206
--选项条的宽度
GRID_OPT_CELL_BORDER = 256
--一个选项的宽度
GRID_OPT_WIDTH = 155
--图形区的高度（比例）
ARCHIVE_HEIGHT = 0.58
--选项的缩放比
OPT_GRID_SCALE = 49/GRID_BORDER
--目标区的缩放比
ARCHIVE_GRID_SCALE = 1

--颜色
GAME_SHAPE_COLOR_BLUE = cc.c3b(68,191,252)
GAME_SHAPE_COLOR_RED  = cc.c3b(246,75,52)


--游戏场景数
GAME_SCENE_COUNT      = 6

--游戏模式
GAME_MODE = {
    mode_3 = 3,
    mode_4 = 4,
    mode_5 = 5,
    mode_6 = 6,
    mode_7 = 7,
    mode_8 = 8,
}

GAME_ENDLESS_MODE = {
    endless = 1,  --无障碍
    random = 2,  --有障碍
}

--选项技能
SKILL_TYPE = {
    ONLEY_COLOR  = 1,
    ONLEY_SHAPE  = 2,
    SELECT_WORD  = 3,
    SELECT_COLOR = 4,
    BLINK        = 5,    --忽隐忽现
    HALF         = 6,    --遮挡
    HIDEN        = 7,    --隐藏一块
    SAME         = 8,
    ROTATY_RIGHT       = 9,
    ROTATY_LEFT       = 10,
}

--定义音效类型
EFFECT_TYPE  = {
    tone_1 = 1,
    tone_2 = 2,
    tone_3 = 3,
    tone_4 = 4,
    tone_5 = 5,
    tone_6 = 6,
    tone_7 = 7,
    tone_8 = 8,

    correct = 9,
    ticktack = 10,
    wrong = 11,
    endtone = 12,
    click = 13,
    slip = 14,

    hit_1 = 15,
    hit_2 = 16,
    hit_3 = 17,
    hit_4 = 18,
    hit_5 = 19,
    start = 20,
    over = 21,
    best = 22,

    unlock = 23,
    showmain = 24,
}
--音效
GAME_EFFECT = {}

GAME_EFFECT[1] = "Resource/sounds/1.mp3"
GAME_EFFECT[2] = "Resource/sounds/2.mp3"
GAME_EFFECT[3] = "Resource/sounds/3.mp3"
GAME_EFFECT[4] = "Resource/sounds/4.mp3"
GAME_EFFECT[5] = "Resource/sounds/5.mp3"
GAME_EFFECT[6] = "Resource/sounds/6.mp3"
GAME_EFFECT[7] = "Resource/sounds/7.mp3"
GAME_EFFECT[8] = "Resource/sounds/8.mp3"

GAME_EFFECT[9] = "Resource/sounds/correct.mp3"
GAME_EFFECT[10] = "Resource/sounds/ticktack.mp3"
GAME_EFFECT[11] = "Resource/sounds/wrong.mp3"
GAME_EFFECT[12] = "Resource/sounds/end.mp3"

GAME_EFFECT[13] = "Resource/sounds/click.mp3"
GAME_EFFECT[14] = "Resource/sounds/slip.mp3"
GAME_EFFECT[15] = "Resource/sounds/hit1.mp3"
GAME_EFFECT[16] = "Resource/sounds/hit2.mp3"
GAME_EFFECT[17] = "Resource/sounds/hit3.mp3"
GAME_EFFECT[18] = "Resource/sounds/hit4.mp3"
GAME_EFFECT[19] = "Resource/sounds/hit5.mp3"

GAME_EFFECT[20] = "Resource/sounds/new.mp3"
GAME_EFFECT[21] = "Resource/sounds/over.mp3"
GAME_EFFECT[22] = "Resource/sounds/best.mp3"
GAME_EFFECT[23] = "Resource/sounds/unlock.mp3"
GAME_EFFECT[24] = "Resource/sounds/startup.mp3"

GAME_BGM = "Resource/sounds/bgm.mp3"



