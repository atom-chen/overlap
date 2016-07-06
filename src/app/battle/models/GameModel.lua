local GameModel = class("GameModel")

--$$$$$$$$$$$$  DEFINITION   $$$$$$$$$$$$$
local ShapeModel = import("..models.ShapeModel")
local ShapeSprite = import("..views.ShapeSprite")

--$$$$$$$$$$$$  CTOR   $$$$$$$$$$$$$
function GameModel:ctor(count)
    self.counts_ = count or 0
    self.apoints = {}     --结果点集
    self.aedges  = {}     --结果边集
    self.ainters = {}     --结果交点

    self.cpoints = {}     --结果点集
    self.cedges  = {}     --结果边集
    self.cinters = {}     --结果交点
end

--$$$$$$$$$$$$  GET & SET   $$$$$$$$$$$$$
function GameModel:getShapes()
    return self.shapes
end
--$$$$$$$$$$$$  MODEL LOGIC   $$$$$$$$$$$$$

function GameModel:onCreate()
    return self
end

---------------
--设置游戏难度，确定图形个数和选项的位置
--@function [parent=#GameModel] setMode
--
function GameModel:setMode(gamemodel)
    self.counts_ = gamemodel
end

---------------
--创建关卡
--@function [parent=#GameModel] creatStage
--
function GameModel:creatStage()
    --错误选项
    self.shapes = {}
    --形状队列
    local temshape= {}
    for v=1, ShapeModel.SHAPE_COUNT do
        temshape[v] = v
    end
    --颜色队列
    local temcolor= {}
    for v=1, ShapeSprite.SHAPE_COLOR_COUNT do
        temcolor[v] = v
    end
    --互斥边
    local mutual = {}

    --选出形状和颜色
    local a =1
    while a<=self.counts_ do
--        local sr,cr
--        if a==1 then
--            sr = 8
--            cr = 1
--        elseif a ==2 then
--            sr = 20
--            cr = 2
--        elseif a==3 then
--            sr=14
--            cr = 3
--        elseif a==4 then
--            sr = 11
--            cr = 4
--        elseif a==5 then
--            sr = 32
--            cr = 5
--        elseif a== 6 then
--            sr = 3
--            cr = 6
--        elseif a==7 then
--            sr = 29
--            cr = 7
--        elseif a==8 then
--            sr = 23
--            cr = 8
--        end
--        local shape = ShapeModel:create(sr,cr)
        local sr= math.random(1,#temshape)
        local cr= math.random(1,#temcolor)
        local shape = ShapeModel:create(temshape[sr],temcolor[cr])
        --        --是否可用
        local isShape = true
        for _, e in pairs(mutual) do
            for _, e1 in pairs(shape:getEdges()) do
                if e==e1 then
                    isShape = false
                    break
                end
            end
        end

        if isShape then
            local me = shape:getMutialEdge()
            if me then
                for _, m in pairs(me) do
                    table.insert(mutual,m)
                end
            end

            self.shapes[a] = shape
            table.remove(temshape,sr)
            table.remove(temcolor,cr)

            a = a+1
        end
    end
    --统计出最后的结果
    for k, model in pairs(self.shapes) do
        local points= model:getPoints()
        local edges = model:getEdges()
        for _, point in pairs(points) do
            self.apoints[point] = model:getColor()
        end
        for _, edge in pairs(edges) do
            self.aedges[edge] = model:getColor()
        end

        for v=1, k-1 do
            local shape= self.shapes[v]
            local inter1 = model:getShapesInter1(shape:getEdges())
            if inter1 then
                for key, inter in pairs(inter1) do
                    self.ainters[inter] = model:getColor()
                end
            end

            local inter2 = model:getShapesInter2(shape:getEdges())
            if inter2 then
                for key, inter in pairs(inter2) do
                    self.ainters[inter] = model:getColor()
                end
            end
        end
    end
--    dump(self.ainters)
    return self.shapes
end

---------------
--创建游戏操作区域
--@function [parent=#GameModel] createOptions
--
function GameModel:createOptions()
    --选项
    self.opts = {}
    --选项标志
    self.optOn = {}
    --已选选项
    self.choosen = {}

    local tem= {}
    for v=1, #self.shapes do
        tem[v] = v
    end

    for v=1, #self.shapes do
        local r = math.random(1,#tem)
        self.opts[v] = tem[r]
        table.remove(tem,r)
        self.optOn[v] = true
    end
    return self.shapes,self.opts
end


---------------
--图形被选中
--@function [parent=#GameModel] optChoosen
--
function GameModel:optChoosen(index)
    local aColor
    local aChoose = false  --over
    local last = false

    local oCpoints = clone(self.cpoints)
    local oCedges  = clone(self.cedges)
    local oCinters = clone(self.cinters)

    if self.optOn[index] then
        local model = self.shapes[self.opts[index]]
        self.choosen[#self.choosen+1] =  self.opts[index]

        local points= model:getPoints()
        local edges = model:getEdges()

        aColor = model:getColor()
        --点校验
        for _, point in pairs(points) do
            self.cpoints[point] = model:getColor()
        end
        for _, edge in pairs(edges) do
            self.cedges[edge] = model:getColor()
        end

        --        dump(self.choosen)

        for v=1, #self.choosen-1 do
            --被盖压的图形
            local shape= self.shapes[self.choosen[v]]
            local inter1 = model:getShapesInter1(shape:getEdges())
            if inter1 then
                for key, inter in pairs(inter1) do
                    self.cinters[inter] = model:getColor()
                end
            end
            local inter2 = model:getShapesInter2(shape:getEdges())
            if inter2 then
                for key, inter in pairs(inter2) do
                    self.cinters[inter] = model:getColor()
                end
            end
        end
        --        dump(self.cinters)
        --被选标志
        self.optOn[index] = false

        --剩下的
        for k, opt in pairs(self.opts) do
            if self.optOn[k] then
                local model = self.shapes[opt]
                local points= model:getPoints()
                local edges = model:getEdges()

                for _, point in pairs(points) do
                    if self.apoints[point] == self.cpoints[point] then
                        --当前是正确的电
                        self.optOn[index] = true
                        aChoose =  true
                    end
                end

                for _, edge in pairs(edges) do
                    if self.aedges[edge] == self.cedges[edge] then
                        --当前是正确的电
                        self.optOn[index] = true
                        aChoose =  true
                    end
                end

                for v=1, #self.choosen do
                    --被盖压的图形
                    local shape= self.shapes[self.choosen[v]]
                    local inter1 = model:getShapesInter1(shape:getEdges())
                    if inter1 then
                        --有交点，交点颜色不是最终颜色
                        for key, inter in pairs(inter1) do
                            if self.ainters[inter] == aColor then
                                self.optOn[index] = true
                                aChoose = true
                            end
                        end
                    end
                    local inter2 = model:getShapesInter2(shape:getEdges())
                    if inter2 then
                        --有交点，交点颜色不是最终颜色
                        for key, inter in pairs(inter2) do
                            if self.ainters[inter] == aColor then
                                self.optOn[index] = true
                                aChoose = true
                            end
                        end
                    end

                end
            end
        end

        --选错了
        if aChoose then
            self.cpoints = oCpoints
            self.cedges = oCedges
            self.cinters =oCinters

            self.choosen[#self.choosen] = nil

            self.optOn[index] = true
        end


        if #self.choosen == #self.opts-1 then
            last = true
        end
        return self.shapes[self.opts[index]],aChoose,last
    end
end


-----------
--
--
--@function [parent=#GameView] checkStageEnd
function GameModel:checkStageEnd()
    for k, sv in pairs(self.apoints) do
        local dv = self.cpoints[k]
        if not dv or sv~=dv then
            --            print(k.."sv"..sv.."ds"..dv)
            local a = k.."sv"..sv.."ds"..dv
            return false,a
        end
    end
    for k, sv in pairs(self.aedges) do
        local dv = self.cedges[k]
        if not dv or sv~=dv then
            --            print(k.."sv"..sv.."ds"..dv)
            return false
        end
    end

    for k, sv in pairs(self.ainters) do
        local dv = self.cinters[k]
        if not dv or sv~=dv then
            --            print(k.."sv"..sv.."ds"..dv)
            return false
        end
    end

    return true
end


-----------
--游戏关卡数据清除
--
--@function [parent=#GameView] gameClear
function GameModel:gameClear()
    self.apoints = {}     --结果点集
    self.aedges  = {}     --结果边集
    self.ainters = {}     --结果交点

    self.cpoints = {}     --结果点集
    self.cedges  = {}     --结果边集
    self.cinters = {}     --结果交点

    self.shapes = {}
end


-----------
--自动排列的正确序列
--
--@function [parent=#GameView] restoreShapes
function GameModel:restoreShapes()
    local tep = {}
    for key, var in pairs(self.opts) do
        if self.optOn[key] then
            tep[var] = key
        else
            tep[var] = 0
        end
    end
    return tep
end


function GameModel:stageEnd()
     return #self.choosen == #self.opts
end

return GameModel