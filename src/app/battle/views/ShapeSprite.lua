local ShapeSprite = class("ShapeSprite", function(imageFilename)
    local shape = display.newNode()
    shape:setContentSize(GRID_BORDER*2,GRID_BORDER*2)
    shape:setAnchorPoint(cc.p(0.5,0.5))
    return shape
end)

ShapeSprite.SHAPE_POINT = {
    --11正方形
    {2,{0.5,0.5},0},
    {2,{1.5,0.5},0},
    {2,{0.5,1.5},0},
    {2,{1.5,1.5},0},
    --22正方形
    {1,{1,1},0},
    --12长方形
    {3,{1,0.5},90},
    {3,{0.5,1},0},
    {3,{1,1.5},90},
    {3,{1.5,1},0},
    --22三角形
    {4,{1,1},180},
    {4,{1,1},0},
    {4,{1,1},-90},
    {4,{1,1},90},
    --12三角形
    {6,{0.5,1},180,-1},
    {6,{0.5,1},0,-1},
    {6,{0.5,1},0},
    {6,{0.5,1},180},

    {6,{1.5,1},180},
    {6,{1.5,1},0},
    {6,{1.5,1},180,-1},
    {6,{1.5,1},0,-1},

    {6,{1,0.5},-90},
    {6,{1,0.5},90},
    {6,{1,0.5},90,-1},
    {6,{1,0.5},-90,-1},

    {6,{1,1.5},-90,-1},
    {6,{1,1.5},90,-1},
    {6,{1,1.5},-90},
    {6,{1,1.5},90,},

    --11三角形
    {5,{0.5,0.5},-90},
    {5,{0.5,0.5},180},
    {5,{0.5,0.5},0},
    {5,{0.5,0.5},90},

    {5,{1.5,0.5},-90},
    {5,{1.5,0.5},90},
    {5,{1.5,0.5},180},
    {5,{1.5,0.5},0},

    {5,{0.5,1.5},-90},
    {5,{0.5,1.5},90},
    {5,{0.5,1.5},0},
    {5,{0.5,1.5},180},

    {5,{1.5,1.5},-90},
    {5,{1.5,1.5},90},
    {5,{1.5,1.5},180},
    {5,{1.5,1.5},0},
}

ShapeSprite.SHAPE_COLOR = {
    cc.c3b(161,68,68), -- 红1

    cc.c3b(84,114,193), --蓝1

    cc.c3b(65,135,110), --绿1

    cc.c3b(114,81,149), --紫1

    cc.c3b(143,149,135), --灰1

    cc.c3b(140,107,69),  -- 褐1

    cc.c3b(222,128,71), --橙

    cc.c3b(238,205,107), --黄1
}

ShapeSprite.SHAPE_COLOR_NAME = {
    "红",
    "蓝",
    "绿",
    "紫",
    "灰",
    "褐",
    "橙",
    "黄",
}


--图形可选颜色总数
ShapeSprite.SHAPE_COLOR_COUNT = #ShapeSprite.SHAPE_COLOR
--图形的类型
ShapeSprite.SHAPE_MODE = {
    SHAPE_BORDER = 1,
    SHAPE = 2,
    BODER = 3,
}
ShapeSprite.SHAPE_COLOR_WHITE = cc.c3b(255,255,255)
--ShapeSprite.SHAPE_COLOR_BLUE = cc.c3b(68,191,252)
ShapeSprite.SHAPE_COLOR_BLUE_SLOW = cc.c3b(7,52,79)

ShapeSprite.SHAPE_COLOR_BLUE_DEEP = cc.c3b(68,191,252)


ShapeSprite.WRONG1 = cc.c3b(181,58,15)
ShapeSprite.WRONG2 = cc.c3b(179,32,32)


function ShapeSprite:ctor(model_,type,skill)
    self.model = model_
    local index = self.model.index
    local shape = ShapeSprite.SHAPE_POINT[index]
    local color = self.model:getColor()
    local spId = shape[1]
    local x = shape[2][1]*GRID_BORDER
    local y = shape[2][2]*GRID_BORDER
    local rotation = shape[3]
    local flip = shape[4]

    type = type or  ShapeSprite.SHAPE_MODE.SHAPE_BORDER
    self.skill = skill or {}

    if type == ShapeSprite.SHAPE_MODE.SHAPE_BORDER or type == ShapeSprite.SHAPE_MODE.BODER then
        local filename = string.format("#l-%d.png",spId)
        self.light = display.newSprite(filename)
        self.light:move(x,y)
        self.light:rotate(rotation)
        if flip then
            self.light:setFlippedX(true)
        end
        self:addChild(self.light)

        if type == ShapeSprite.SHAPE_MODE.BODER then
            --            self.light:setColor(ShapeSprite.SHAPE_COLOR_BLUE_DEEP)
            self.light:setOpacity(0)
            local action = ac.ccSeq(ac.ccDelay(0.5),ac.ccFadeTo(0.5,255))
            ac.execute(self.light,action)
        end
    end


    if type == ShapeSprite.SHAPE_MODE.SHAPE_BORDER or type == ShapeSprite.SHAPE_MODE.SHAPE then

        if self.skill[SKILL_TYPE.ONLEY_COLOR] then
            --只有颜色的选项
            self.maskback = display.newSprite("#opt-skill-back.png")
                :move(GRID_BORDER,GRID_BORDER)
                :addTo(self)
            self.maskback:setScale(1/OPT_GRID_SCALE)

            display.newSprite(string.format("#star-color-%d.png",color))
                :move(69,20)
                :addTo(self.maskback)
        elseif self.skill[SKILL_TYPE.ONLEY_SHAPE] then
            color = 9
        elseif self.skill[SKILL_TYPE.SELECT_WORD] then
            self.maskback = display.newSprite("#opt-skill-back.png")
                :move(GRID_BORDER,GRID_BORDER)
                :addTo(self)
            self.maskback:setScale(1/OPT_GRID_SCALE)

            local lang = locale.defaultLang()
            self.text = display.newSprite(string.format("#word-%s-%d.png",lang,color))
                :move(69,20)
                :addTo(self.maskback)

        elseif self.skill[SKILL_TYPE.SELECT_COLOR] then
            self.maskback = display.newSprite("#opt-skill-back.png")
                :move(GRID_BORDER,GRID_BORDER)
                :addTo(self)
            self.maskback:setScale(1/OPT_GRID_SCALE)

            local lang = locale.defaultLang()
            self.text = display.newSprite(string.format("#word-%s-%d.png",lang,color))
                :move(69,20)
                :addTo(self.maskback)
            self.text:setColor(ShapeSprite.SHAPE_COLOR[color])
        end


        local filename = string.format("#s-%d.png",spId)
        self.shape = display.newSprite(filename)
            :move(x,y)
            :rotate(rotation)
            :addTo(self)
        if self.skill[SKILL_TYPE.ONLEY_SHAPE] then
            self.shape:setColor(cc.c3b(255,255,255))
        else
            self.shape:setColor(ShapeSprite.SHAPE_COLOR[color])
        end


        if flip then
            self.shape:setFlippedX(true)
        end

        if self.skill[SKILL_TYPE.ONLEY_COLOR] or self.skill[SKILL_TYPE.SELECT_WORD] or  self.skill[SKILL_TYPE.SELECT_COLOR]  then
            self.shape:hide()
        end

    end


end


function ShapeSprite:getModel()
    return self.model
end


function ShapeSprite:setCompleted()
    if self.light then
        self.light:hide()
    end
    --    self.shape:setColor(ShapeSprite.SHAPE_COLOR_BLUE_SLOW)
    self.shape:setColor(ShapeSprite.SHAPE_COLOR_WHITE)
    if self.skill[SKILL_TYPE.HIDEN] then
        self.shape:show()
    end
end


function ShapeSprite:setWhite()
    if self.light then
        self.light:hide()
    end
    self.shape:setColor(ShapeSprite.SHAPE_COLOR_WHITE)
end

function ShapeSprite:shapeFadeOut(t)
    ac.execute(self.shape,ac.ccFadeTo(t,0))
end

function ShapeSprite:shapeFadeIn(t)
    self.shape:setOpacity(0)
    ac.execute(self.shape,ac.ccFadeTo(t,255))
end


function ShapeSprite:fadeWhite(t)
    t = t or 0.2
    if self.light then
        self.light:hide()
    end
    ac.execute(self.shape,ac.ccFadeIn(0.3))
end



function ShapeSprite:lightOver(t)
    local c = ShapeSprite.SHAPE_COLOR[self.model:getColor()]

    self.shape:runAction(cc.Sequence:create(cc.TintTo:create(t/4,255,255,255),
        cc.TintTo:create(t/4,c.r,c.g,c.b),cc.TintTo:create(t/4,255,255,255),
        cc.TintTo:create(t/4,c.r,c.g,c.b),cc.DelayTime:create(0.1)
    ))
end

function ShapeSprite:setOpt(optv)
    self.shape:setOpacity(optv)
end


----------------------
--校验技能类型，并恢复到正确的形状
--
function ShapeSprite:valid()
    if self.skill[SKILL_TYPE.SELECT_WORD] or  self.skill[SKILL_TYPE.SELECT_COLOR]  then
        self.shape:show()
        self.maskback:hide()
    elseif self.skill[SKILL_TYPE.ONLEY_COLOR] then
        self.shape:show()
        self.maskback:hide()
    elseif self.skill[SKILL_TYPE.ONLEY_SHAPE] then
        local color = self.model:getColor()
        self.shape:setColor(ShapeSprite.SHAPE_COLOR[color])
    elseif  self.skill[SKILL_TYPE.SAME] then
        local color = self.model:getColor()
        self.shape:setColor(ShapeSprite.SHAPE_COLOR[color])
    elseif self.skill[SKILL_TYPE.ROTATY_RIGHT] then
        ac.execute(self,cc.RotateTo:create(0.06,90))
    elseif self.skill[SKILL_TYPE.ROTATY_LEFT] then
        ac.execute(self,cc.RotateTo:create(0.06,-90))
    elseif self.skill[SKILL_TYPE.HIDEN] then
        self.shape:show()
    end
end

----------------------
--校验技能类型，并恢复到正确的形状
--
function ShapeSprite:restore()
    if self.skill[SKILL_TYPE.ONLEY_COLOR] or self.skill[SKILL_TYPE.SELECT_WORD] or  self.skill[SKILL_TYPE.SELECT_COLOR]  then
        self.shape:hide()
        self.maskback:show()
    elseif self.skill[SKILL_TYPE.ONLEY_SHAPE] then
        self.shape:setColor(cc.c3b(255,255,255))
    elseif self.skill[SKILL_TYPE.ROTATY_LEFT] then
        ac.execute(self,cc.RotateTo:create(0.06,0))
        --    elseif self.skill[SKILL_TYPE.HIDEN] then
        --        self.shape:show()
    elseif self.skill[SKILL_TYPE.ROTATY_RIGHT] then
        ac.execute(self,cc.RotateTo:create(0.06,0))
    end
end


----------------------
--闪烁
--
function ShapeSprite:blink()
    local action = cc.RepeatForever:create(ac.ccSeq(ac.ccFadeOut(2),ac.ccFadeIn(2),ac.ccDelay(2)))
    ac.execute(self.shape,action)
end


function ShapeSprite:hideShape()
    self.shape:hide()
    self.skill[SKILL_TYPE.HIDEN] = SKILL_TYPE.HIDEN
end


function ShapeSprite:setTextColor(color)
    self.text:setColor(ShapeSprite.SHAPE_COLOR[color])
end


function ShapeSprite:setTextName(color)
    local lang = locale.defaultLang()
    self.text:setSpriteFrame(string.format("word-%s-%d.png",lang,color))
end

-------------------------------
--给方法只是设置外观颜色，并不改变颜色属性
--
function ShapeSprite:setOutColor(color)
    self.shape:setColor(ShapeSprite.SHAPE_COLOR[color])
end


return ShapeSprite