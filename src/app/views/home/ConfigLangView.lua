
local ConfigLangView = class("ConfigLangView", cc.load("mvc").ViewBase)

ConfigLangView.RESOURCE_FILENAME = "home.home_lang"
ConfigLangView.LOCALE_LANG_LABEL = {
    OK         = _("OK"),
}

local LangCellView = import(".LangCellView")
LangCellView.CELL_HEIGHT = 150
LangCellView.CELL_WIDTH  = 195
LangCellView.LANGUAGE  = {
    {"cn", "中文"},
    {"jp","日本語"},
    {"en", "English"},
    {"fr", "français"},
    {"gr", "Deutsch"},
    {"sp", "español"},
    {"pt", "português"},
}

ConfigLangView.SCROLL_VIEW_HEIGHT = 450

function ConfigLangView:onCreate()
    self:localLanguage()
    
    for v=1, 7 do
        local y = math.floor((v-1)/3)
        local x = (v-1)-y*3
        LangCellView:create(self:getApp(),"")
            :move(x*LangCellView.CELL_WIDTH,ConfigLangView.SCROLL_VIEW_HEIGHT-LangCellView.CELL_HEIGHT - y*LangCellView.CELL_HEIGHT)
            :setLang(LangCellView.LANGUAGE[v])
            :addTo(self.scrollView)
    end
    --设置滚动条的可见
    self.scrollView:setScrollBarEnabled(false)
end

function ConfigLangView:touch(event)
end



function ConfigLangView:onClick( path,node,funcName)
    if node:getName()=="btn_ok"  then
        local function btnCallback(node,eventType)
            audio.playSound(GAME_EFFECT[13])
            AppViews:fadeBackAndClose(self)
        end

        return btnCallback
    end
end



return ConfigLangView
