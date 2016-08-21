
local LangCellView = class("LangCellView", cc.load("mvc").ViewBase)

LangCellView.RESOURCE_FILENAME = "home.lang_cell"

function LangCellView:onCreate()
    self:get():move(0,0)
end

function LangCellView:touch(event)
end



function LangCellView:onClick( path,node,funcName)
    if node:getName()=="btn_lang"  then
        local function btnCallback(node,eventType)
            locale.saveDefault(self.lang)
--            require 'main'
           import ("main")
        end
        return btnCallback
    end
end

function LangCellView:setLang(langs)
    local tex = string.format("language-%s.png",langs[1])
    self.btn_lang:loadTextures(tex,tex,tex,1)
    self.lbl_lang:setString(langs[2])
    
    self.lang = langs[1]
    return self
end



return LangCellView
