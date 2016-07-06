---------------------------
--应用级别的全局工具类
--
--@type app
local Level = class("Level")

Level.LOCALE_LANG_LABEL = {
    Star1             = _("NorScore"),
    Star2             = _("UniScore"),
    Star3             = _("TimeNorScore"),
    Star4             = _("TimeUniScore"),
}

Level.data = {}
--Level.data [3] = {3,10,function(x) local dt = 4 -  math.floor(x/4)  if dt <=1  then  dt = 1.3 end  return dt  end}
--Level.data [4] = {4,14,function(x) local dt = 6 - math.floor(x/3)  if dt <2  then  dt = 1.1 end  return dt  end}
--Level.data [5] = {5,20,function(x) local dt = 9 - math.floor(x/2)  if dt <3 then  dt = 2.2 end  return dt  end}
--Level.data [6] = {6,28,function(x) local dt = 11 - math.floor(x/1.5)  if dt <4 then  dt = 4 end  return dt  end}
--Level.data [7] = {7,38,function(x) local dt = 15 - math.floor(x/1)  if dt <6 then  dt = 6 end  return dt  end}
--Level.data [8] = {8,50,function(x) local dt = 20 - math.floor(x/0.5)  if dt <8 then  dt = 8 end  return dt end}

Level.timeFunction =  function(score,t0,x,min)
    local dt = t0 -  math.floor(score/x)
    if dt < min  then
        dt = min end
    return dt
end

--场景 ，块数，障碍，星级1，星级2，星级3，初始时间,时间函数参数
Level.data [1] = {1,3,{{0}},{3,0,0},{10,0,0},{20,0,0},10,{4,4,1.1}}
Level.data [2] = {1,3,{{0}},{0,5,0},{0,9,0}, {0,15,0},10,{4,4,1.1}}
Level.data [3] = {1,3,{{0}},{5,0,15},{5,0,11},{5,0,8},0,{0,0,0}}
Level.data [4] = {1,3,{{0}},{0,5,15},{0,5,11},{0,5,8},0,{0,0,0}}
Level.data [5] = {1,3,{{1}},{5,0,0},{0,10,0},{20,0,0},10,{4,4,1.1}}
Level.data [6] = {1,3,{{2}},{7,0,0},{0,10,0},{20,0,0},10,{4,4,1.1}}
Level.data [7] = {1,3,{{4}},{7,0,0},{0,10,0},{20,0,0},10,{4,4,1.1}}
Level.data [8] = {1,3,{{3}},{7,0,0},{0,10,0},{20,0,0},10,{4,4,1.1}}
Level.data [9] = {1,3,{{3},{4}},{7,0,0},{0,10,0},{20,0,0},10,{4,4,1.1}}

Level.data [10] = {2,4,{{5}},{9,0,0},{15,0,0},{0,10,0},14,{6,3,1.3}}
Level.data [11] = {2,4,{{1,5}},{8,0,0},{14,0,0},{0,8,0},14,{6,3,1.3}}
Level.data [12] = {2,4,{{2,5}},{8,0,0},{14,0,0},{0,8,0},14,{6,3,1.3}}
Level.data [13] = {2,4,{{6}},{6,0,35},{6,0,30},{6,0,25},0,{0,0,0}}
Level.data [14] = {2,4,{{1,6}},{6,0,35},{6,0,30},{6,0,25},0,{0,0,0}}
Level.data [15] = {2,4,{{2,6}},{6,0,40},{6,0,34},{6,0,28},0,{0,0,0}}
Level.data [16] = {2,4,{{9}},{8,0,0},{0,9,0},{15,0,0},14,{6,3,1.3}}
Level.data [17] = {2,4,{{2,10}},{6,0,0},{0,5,0},{10,0,0},14,{6,3,1.3}}
Level.data [18] = {2,4,{{2,9},{2,10}},{6,0,0},{0,5,0},{10,0,0},14,{6,3,1.3}}

Level.data [19] = {3,5,{{2}},{7,0,0},{0,8,0},{14,0,0},20,{9,2,2.2}}
Level.data [20] = {3,5,{{7}},{6,0,0},{0,7,0},{13,0,0},20,{9,2,2.2}}
Level.data [21] = {3,5,{{8}},{6,0,0},{0,7,0},{13,0,0},20,{9,2,2.2}}
Level.data [22] = {3,5,{{0}},{6,0,26},{6,0,20},{6,0,16},0,{0,0,0}}
Level.data [23] = {3,5,{{6}},{10,0,0},{0,10,0},{20,0,0},20,{9,2,2.2}}
Level.data [24] = {3,5,{{3,5}},{0,5,0},{0,10,0},{0,15,0},20,{9,2,2.2}}
Level.data [25] = {3,5,{{4}},{15,0,0},{0,15,0},{24,0,0},20,{9,2,2.2}}
Level.data [26] = {3,5,{{3}},{7,0,0},{0,8,0},{15,0,0},20,{9,2,2.2}}
Level.data [27] = {3,5,{{3},{4}},{7,0,0},{0,7,0},{14,0,0},20,{9,2,2.2}}

Level.data [28] = {4,6,{{1}},{9,0,0},{15,0,0},{0,10,0},28,{11,1.5,4}}
Level.data [29] = {4,6,{{1,5}},{9,0,0},{15,0,0},{0,10,0},28,{11,1.5,4}}
Level.data [30] = {4,6,{{2,5}},{9,0,0},{15,0,0},{0,10,0},28,{11,1.5,4}}
Level.data [31] = {4,6,{{2,8}},{9,0,0},{15,0,0},{0,10,0},28,{11,1.5,4}}
Level.data [32] = {4,6,{{5,8}},{9,0,0},{15,0,0},{0,10,0},28,{11,1.5,4}}
Level.data [33] = {4,6,{{1,6}},{9,0,0},{15,0,0},{0,10,0},28,{11,1.5,4}}
Level.data [34] = {4,6,{{2,6}},{9,0,0},{15,0,0},{0,10,0},28,{11,1.5,4}}
Level.data [35] = {4,6,{{2,9},{2,10}},{9,0,0},{15,0,0},{0,10,0},28,{11,1.5,4}}
Level.data [36] = {4,6,{{3,5},{4,5}},{5,0,0},{10,0,0},{0,8,0},28,{11,1.5,4}}

Level.data [37] = {5,7,{{2}},{5,0,0},{7,0,0},{9,0,0},45,{15,1,6}}
Level.data [38] = {5,7,{{2,6,10}},{4,0,0},{6,0,0},{8,0,0},45,{15,1,6}}
Level.data [39] = {5,7,{{2,5}},{4,0,0},{6,0,0},{8,0,0},45,{15,1,6}}
Level.data [40] = {5,7,{{8}},{5,0,0},{7,0,0},{9,0,0},45,{15,1,6}}
Level.data [41] = {5,7,{{2,6}},{4,0,0},{6,0,0},{8,0,0},45,{15,1,6}}
Level.data [42] = {5,7,{{2,7}},{5,0,0},{7,0,0},{9,0,0},45,{15,1,6}}
Level.data [43] = {5,7,{{0}},{4,0,80},{4,0,65},{44,0,50},0,{0,0,0}}
Level.data [44] = {5,7,{{0}},{0,4,0},{0,6,0},{0,8,0},45,{15,1,6}}
Level.data [45] = {5,7,{{5}},{0,3,80},{0,3,60},{0,3,50},0,{0,0,0}}

Level.data [46] = {6,8,{{0}},{7,0,0},{0,9,0},{11,0,0},50,{20,0.5,8}}
Level.data [47] = {6,8,{{5}},{5,0,0},{0,3,0},{8,0,0},50,{20,0.5,8}}
Level.data [48] = {6,8,{{6}},{6,0,0},{8,0,0},{9,0,0},50,{20,0.5,8}}
Level.data [49] = {6,8,{{7}},{3,0,0},{4,0,0},{5,0,0},50,{20,0.5,8}}
Level.data [50] = {6,8,{{8}},{3,0,0},{5,0,0},{6,0,0},50,{20,0.5,8}}
Level.data [51] = {6,8,{{5,6}},{3,0,0},{4,0,0},{5,0,0},50,{20,0.5,8}}
Level.data [52] = {6,8,{{0}},{0,3,0},{0,5,0},{0,7,0},50,{20,0.5,8}}
Level.data [53] = {6,8,{{0}},{3,0,80},{3,0,55},{3,0,40},0,{0,0,0}}
Level.data [54] = {6,8,{{0}},{0,3,80},{0,3,60},{0,3,50},0,{0,0,0}}


function Level.getStarInfo(level)
    local star1 =Level.data[level][4]
    local star2 =Level.data[level][5]
    local star3 =Level.data[level][6]


    local function getNoTimeStarInfo(star)
        if star[1] and star[1]~=0 then
            return string.format(_("TimeNorScore"),star[3],star[1])
--            return string.format("%d秒内得分%d",star[3],star[1])
        elseif star[2]  and star[2]~=0  then
            return  string.format(_("TimeUniScore"),star[3],star[2])
--            return  string.format("%d秒内完美得分%d",star[3],star[2])
        end
    end


    local function getTimeStarInfo(star)
        if star[1] and star[1]~=0 then
--            return string.format("得分%d",star[1])
            return string.format(_("NorScore"),star[1])
        elseif star[2] and star[2]~=0 then
--            return  string.format("完美得分%d",star[2])
            return string.format(_("UniScore"),star[2])
        end
    end

    local llbinfos = {}
    if  Level.data[level][7] == 0 then
        --不限时间模式
        table.insert(llbinfos,getNoTimeStarInfo(star1))
        table.insert(llbinfos,getNoTimeStarInfo(star2))
        table.insert(llbinfos,getNoTimeStarInfo(star3))
    else
        table.insert(llbinfos,getTimeStarInfo(star1))
        table.insert(llbinfos,getTimeStarInfo(star2))
        table.insert(llbinfos,getTimeStarInfo(star3))
    end
    return llbinfos
end

return Level