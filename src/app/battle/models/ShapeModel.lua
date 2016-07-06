local ShapeModel = class("ShapeModel")

ShapeModel.SHAPE_ = {
    --11正方形
    {1,2,5,4},  --1
    {2,3,6,5}, --2
    {4,5,8,7},--3
    {5,6,9,8},--4
    --22正方形
    {1,2,3,6,9,8,7,4},--5
    --12长方形
    {1,2,3,6,5,4},--6
    {1,2,5,8,7,4},--7
    {4,5,6,9,8,7},--8
    {2,3,6,9,8,5},--9
    --22三角形
    {1,2,3,6,9,5},--10
    {1,5,9,8,7,4},--11
    {1,2,3,5,7,4},--12
    {3,6,9,8,7,5},--13
    --12三角形
    {1,2,7,4},--14
    {2,7,8,5},--15
    {1,4,7,8},--16
    {1,2,5,8},--17

    {2,3,6,9},--18
    {2,5,8,9},--19
    {2,3,8,5},--20
    {3,8,9,6},--21

    {1,2,3,4},--22
    {3,4,5,6},--23
    {1,2,3,6},--24
    {1,4,5,6},--25
    
    {4,7,8,9},--26
    {4,5,6,9},--27
    {4,5,6,7},--28
    {6,7,8,9},--29

    --11三角形
    {1,2,4},--30
    {1,2,5},--31
    {1,4,5},--32
    {2,4,5},--33

    {2,3,5},--34
    {3,5,6},--35
    {2,3,6},--36
    {2,5,6},--37

    {4,5,7},--38
    {5,7,8},--39
    {4,7,8},--40
    {4,5,8},--41

    {5,6,8},--42
    {6,8,9},--43
    {5,6,9},--44
    {5,8,9},--45

}
--检测交点的线
ShapeModel.LINE = {}

--短线
ShapeModel.LINE[15]  = 1
ShapeModel.LINE[24]  = 1
ShapeModel.LINE[26]  = 1
ShapeModel.LINE[35]  = 1
ShapeModel.LINE[57]  = 1
ShapeModel.LINE[48]  = 1
ShapeModel.LINE[59]  = 1
ShapeModel.LINE[68]  = 1
--长线
ShapeModel.LINE[18]  = 2
ShapeModel.LINE[27]  = 2
ShapeModel.LINE[29]  = 2
ShapeModel.LINE[38]  = 2
ShapeModel.LINE[16]  = 2
ShapeModel.LINE[34]  = 2
ShapeModel.LINE[49]  = 2
ShapeModel.LINE[67]  = 2

--ShapeModel.LINE[25]  = 1
--ShapeModel.LINE[45]  = 1
--ShapeModel.LINE[56]  = 1
--ShapeModel.LINE[58]  = 1




ShapeModel.INTERSECTION = {}
--11x11
ShapeModel.INTERSECTION[1245] = 1245
ShapeModel.INTERSECTION[2356] = 2356
ShapeModel.INTERSECTION[4578] = 4578
ShapeModel.INTERSECTION[5689] = 5689
--11x12
ShapeModel.INTERSECTION[1248] = 1248
ShapeModel.INTERSECTION[1257] = 2347--
ShapeModel.INTERSECTION[1578] = 1489--
ShapeModel.INTERSECTION[2478] = 2478

ShapeModel.INTERSECTION[2359] = 1269--
ShapeModel.INTERSECTION[2689] = 2689
ShapeModel.INTERSECTION[2368] = 2368
ShapeModel.INTERSECTION[3589] = 3678--

ShapeModel.INTERSECTION[1246] = 1246
ShapeModel.INTERSECTION[1356] = 1269--
ShapeModel.INTERSECTION[1345] = 2347--
ShapeModel.INTERSECTION[2346] = 2346

ShapeModel.INTERSECTION[4579] = 1489--
ShapeModel.INTERSECTION[4689] = 4689
ShapeModel.INTERSECTION[4678] = 4678
ShapeModel.INTERSECTION[5679] = 3678--

--21x21
ShapeModel.INTERSECTION[1348] = 1348
ShapeModel.INTERSECTION[2348] = 2348
ShapeModel.INTERSECTION[2349] = 2349

ShapeModel.INTERSECTION[1267] = 1267
ShapeModel.INTERSECTION[1269] = 1269
ShapeModel.INTERSECTION[1368] = 1368

ShapeModel.INTERSECTION[2479] = 2479
ShapeModel.INTERSECTION[1489] = 1489
ShapeModel.INTERSECTION[3489] = 3489

ShapeModel.INTERSECTION[1678] = 1678
ShapeModel.INTERSECTION[3678] = 3678
ShapeModel.INTERSECTION[2679] = 2679

ShapeModel.INTERSECTION[4679] = 4679
ShapeModel.INTERSECTION[1346] = 1346
ShapeModel.INTERSECTION[2679] = 2679
ShapeModel.INTERSECTION[1678] = 1678

--在内线上的焦点
ShapeModel.INTERSECTION[1278] = 1278
ShapeModel.INTERSECTION[2389] = 2389
ShapeModel.INTERSECTION[1346] = 1346
ShapeModel.INTERSECTION[4679] = 4679

--内线
ShapeModel.INTERLINE = {}
ShapeModel.INTERLINE[45] = 1278
ShapeModel.INTERLINE[25] = 1346
ShapeModel.INTERLINE[56] = 2389
ShapeModel.INTERLINE[58] = 4679



--内线和斜线的交点
ShapeModel.LINE_INTER = {}
ShapeModel.LINE_INTER[1458] = 1278
ShapeModel.LINE_INTER[2457] = 1278

ShapeModel.LINE_INTER[1256] = 1346
ShapeModel.LINE_INTER[2345] = 1346

ShapeModel.LINE_INTER[2569] = 2389
ShapeModel.LINE_INTER[3568] = 2389

ShapeModel.LINE_INTER[4589] = 4679
ShapeModel.LINE_INTER[5678] = 4679



--不能同时出现的边
ShapeModel.MUTUAL = {}
ShapeModel.MUTUAL[18] = {15,48} 
ShapeModel.MUTUAL[15] = {18,16} 
ShapeModel.MUTUAL[48] = {18,49} 

ShapeModel.MUTUAL[27] = {57,24} 
ShapeModel.MUTUAL[57] = {27,67} 
ShapeModel.MUTUAL[24] = {27,34} 

ShapeModel.MUTUAL[29] = {26,59} 
ShapeModel.MUTUAL[26] = {29,16} 
ShapeModel.MUTUAL[59] = {29,49}
 
ShapeModel.MUTUAL[38] = {68,35} 
ShapeModel.MUTUAL[68] = {38,67} 
ShapeModel.MUTUAL[35] = {38,34} 

ShapeModel.MUTUAL[16] = {15,26} 
ShapeModel.MUTUAL[15] = {16,18} 
ShapeModel.MUTUAL[26] = {16,29} 

ShapeModel.MUTUAL[34] = {35,24} 
ShapeModel.MUTUAL[35] = {34,38} 
ShapeModel.MUTUAL[24] = {34,27} 

ShapeModel.MUTUAL[67] = {68,57} 
ShapeModel.MUTUAL[68] = {67,38} 
ShapeModel.MUTUAL[57] = {67,27}

ShapeModel.MUTUAL[49] = {59,48} 
ShapeModel.MUTUAL[59] = {49,29} 
ShapeModel.MUTUAL[48] = {49,18}


ShapeModel.INTERTYPE = {}
--11x11
ShapeModel.INTERTYPE[1245] = 1
ShapeModel.INTERTYPE[2356] = 1
ShapeModel.INTERTYPE[4578] = 1
ShapeModel.INTERTYPE[5689] = 1
--11x12
ShapeModel.INTERTYPE[1248] = 2
ShapeModel.INTERTYPE[1257] = 2--
ShapeModel.INTERTYPE[1578] = 2--
ShapeModel.INTERTYPE[2478] = 2

ShapeModel.INTERTYPE[2359] = 2--
ShapeModel.INTERTYPE[2689] = 2
ShapeModel.INTERTYPE[2368] = 2
ShapeModel.INTERTYPE[3589] = 2--

ShapeModel.INTERTYPE[1246] = 2
ShapeModel.INTERTYPE[1356] = 2--
ShapeModel.INTERTYPE[1345] = 2--
ShapeModel.INTERTYPE[2346] = 2

ShapeModel.INTERTYPE[4579] = 2--
ShapeModel.INTERTYPE[4689] = 2
ShapeModel.INTERTYPE[4678] = 2
ShapeModel.INTERTYPE[5679] = 2--

--21x21
ShapeModel.INTERTYPE[1348] = 3
ShapeModel.INTERTYPE[2348] = 3
ShapeModel.INTERTYPE[2349] = 3

ShapeModel.INTERTYPE[1267] = 3
ShapeModel.INTERTYPE[1269] = 3
ShapeModel.INTERTYPE[1368] = 3

ShapeModel.INTERTYPE[2479] = 3
ShapeModel.INTERTYPE[1489] = 3
ShapeModel.INTERTYPE[3489] = 3

ShapeModel.INTERTYPE[1678] = 3
ShapeModel.INTERTYPE[3678] = 3
ShapeModel.INTERTYPE[2679] = 3

ShapeModel.INTERTYPE[4679] = 3
ShapeModel.INTERTYPE[1346] = 3
ShapeModel.INTERTYPE[2679] = 3
ShapeModel.INTERTYPE[1678] = 3



ShapeModel.SHAPE_COUNT = #ShapeModel.SHAPE_

function ShapeModel:ctor(shape_,color_)
    self.index = shape_
    self.points = ShapeModel.SHAPE_[self.index]
    self:setEdges()
    self.color = color_
end

----------------------
--获取形状的点
--
--@function [parent=#src.app.models.ShapeModel] getPoints
function ShapeModel:getPoints()
    return ShapeModel.SHAPE_[self.index]
end

----------------------
--获取形状的颜色
--
--@function [parent=#src.app.models.ShapeModel] getPoints
function ShapeModel:getColor()
    return self.color
end

----------------------
--计算形状的边
--
--@function [parent=#src.app.models.ShapeModel] setEdges
function ShapeModel:setEdges()
    self.edges = {}
    local points = self:getPoints()
    for k, v in pairs(points) do
        local next
        if k == #self:getPoints() then
            next = points[1]
        else
            next = points[k+1]
        end
        table.insert(self.edges,self:getOrderIndex(v,next))
    end
end

----------------------
--获取形状的边
--
--@function [parent=#src.app.models.ShapeModel] getPoints
function ShapeModel:getEdges()
    return self.edges
end

----------------------
--获取传入小标的排序后的序列
--
--@function [parent=#src.app.models.ShapeModel] getPoints
function ShapeModel:getOrderIndex(...)
    local arg = {...}

    table.sort(arg,function(a,b)
        return a<b
    end)
    local c = #arg-1
    local result = 0
    for _, v in pairs(arg) do
        result = result+v*math.pow(10,c)
        c=c-1
    end
    return result
end

----------------------
--获取两个形状的交点，不包括正常点和边
--
--@function [parent=#src.app.models.ShapeModel] getShapesInter
function ShapeModel:getShapesInter1(edges)
    local inters = nil
    for sk, sv in pairs(self.edges) do
        --斜线和斜线的交点
        if ShapeModel.LINE[sv] then
            for dk, dv in pairs(edges) do
                if ShapeModel.LINE[dv] then
                    local inter = self:getOrderIndex(math.floor(sv/10),sv%10,math.floor(dv/10),dv%10)
                    if ShapeModel.INTERSECTION[inter] then
                        --这个地方，之前长边和短边可能判断成长长（24，38），所有加入斜线香蕉类型
                        --短短
                        if ShapeModel.LINE[sv] == 1 and ShapeModel.LINE[dv] == 1 and ShapeModel.INTERTYPE[inter] == 1 then
                            if not inters then
                            	inters = {}
                            end
                            table.insert(inters,ShapeModel.INTERSECTION[inter]) 
                        end
                        --长长  
                        if ShapeModel.LINE[sv] == 2 and ShapeModel.LINE[dv] == 2 and ShapeModel.INTERTYPE[inter] == 3 then
                            if not inters then
                                inters = {}
                            end
                            table.insert(inters,ShapeModel.INTERSECTION[inter]) 
                        end
                        --长短
                        if (ShapeModel.LINE[sv] + ShapeModel.LINE[dv] == 3) and ShapeModel.INTERTYPE[inter] == 2 then
                            if not inters then
                                inters = {}
                            end
                            table.insert(inters,ShapeModel.INTERSECTION[inter]) 
                        end
                	end
                end
            end
        end
    end
    
    
    return  inters
end

----------------------
--获取两个形状的交点，不包括正常点和边
--
--@function [parent=#src.app.models.ShapeModel] getShapesInter
function ShapeModel:getShapesInter2(edges)
    local inters = nil
    for sk, sv in pairs(self.edges) do
        --斜线和内线的交点
        if ShapeModel.LINE[sv] then
            for dk, dv in pairs(edges) do
                if ShapeModel.INTERLINE[dv] then
                    local inter = self:getOrderIndex(math.floor(sv/10),sv%10,math.floor(dv/10),dv%10)
                    if ShapeModel.LINE_INTER[inter] then
                        if not inters then
                            inters = {}
                        end
                        table.insert(inters,ShapeModel.LINE_INTER[inter]) 
                    end
                end
            end
        end

        --内线和斜线的交点
        if ShapeModel.INTERLINE[sv] then
            for dk, dv in pairs(edges) do
                if ShapeModel.LINE[dv] then
                    local inter = self:getOrderIndex(math.floor(sv/10),sv%10,math.floor(dv/10),dv%10)
                    if ShapeModel.LINE_INTER[inter] then
                        if not inters then
                            inters = {}
                        end
                        table.insert(inters,ShapeModel.LINE_INTER[inter])
                    end
                end
            end
        end
    end
    
    return inters
end



----------------------
--不能同时出现的另一条边
--
--@function [parent=#src.app.models.ShapeModel] getMutialEdge
function ShapeModel:getMutialEdge()
    for _, edge in pairs(self.edges) do
        if ShapeModel.MUTUAL[edge] then
            return ShapeModel.MUTUAL[edge]
    	end
    end
end

return ShapeModel