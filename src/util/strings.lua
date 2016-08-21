
---------------------------
--对于常用的字符串的一些扩展操作的全局模块
--
--@module strings
strings = {}

strings._htmlspecialchars_set = {}
strings._htmlspecialchars_set["&"] = "&amp;"
strings._htmlspecialchars_set["\""] = "&quot;"
strings._htmlspecialchars_set["'"] = "&#039;"
strings._htmlspecialchars_set["<"] = "&lt;"
strings._htmlspecialchars_set[">"] = "&gt;"


---------------------------
--将特殊字符转为 HTML 转义符
-- print(strings.htmlspecialchars("<ABC>"))
-- 输出 &lt;ABC&gt;
--
--@function [parent=#strings] htmlspecialchars
--@param string#string input 输入字符串
--@return string#string 转换结果
function strings.htmlspecialchars(input)
    for k, v in pairs(strings._htmlspecialchars_set) do
        input = string.gsub(input, k, v)
    end
    return input
end


---------------------------
--将 HTML 转义符还原为特殊字符，功能与 string.htmlspecialchars() 正好相反
--print(string.restorehtmlspecialchars("&lt;ABC&gt;"))
-- 输出 <ABC>
--
--@function [parent=#strings] restorehtmlspecialchars
--@param string#string input 输入字符串
--@return string#string 转换结果
function strings.restorehtmlspecialchars(input)
    for k, v in pairs(strings._htmlspecialchars_set) do
        input = string.gsub(input, v, k)
    end
    return input
end

---------------------------
--将字符串中的 \n 换行符转换为 HTML 标记
-- print(string.nl2br("Hello\nWorld"))
-- Hello<br />World
--
--@function [parent=#strings] nl2br
--@param string#string input 输入字符串
--@return string#string 转换结果
function strings.nl2br(input)
    return string.gsub(input, "\n", "<br />")
end


---------------------------
--将字符串中的特殊字符和 \n 换行符转换为 HTML 转移符和标记
--print(string.nl2br("<Hello>\nWorld"))
-- 输出
-- &lt;Hello&gt;<br />World
--
--@function [parent=#strings] text2html
--@param string#string input 输入字符串
--@return string#string 转换结果
function strings.text2html(input)
    input = string.gsub(input, "\t", "    ")
    input = string.htmlspecialchars(input)
    input = string.gsub(input, " ", "&nbsp;")
    input = string.nl2br(input)
    return input
end


---------------------------
--用指定字符或字符串分割输入字符串，返回包含分割结果的数组
-- local input = "Hello,World"
-- local res = string.split(input, ",")
-- res = {"Hello", "World"}
-- local input = "Hello-+-World-+-Quick"
-- local res = string.split(input, "-+-")
-- res = {"Hello", "World", "Quick"}
--
--@function [parent=#strings] split
--@param string#string input 输入字符串
--@param string#string delimiter 分割标记字符或字符串
--@return array#array 包含分割结果的数组
function strings.split(input, delimiter)
    input = tostring(input)
    delimiter = tostring(delimiter)
    if (delimiter=='') then return false end
    local pos,arr = 0, {}
    -- for each divider found
    for st,sp in function() return string.find(input, delimiter, pos, true) end do
        table.insert(arr, string.sub(input, pos, st - 1))
        pos = sp + 1
    end
    table.insert(arr, string.sub(input, pos))
    return arr
end


---------------------------
--去除输入字符串头部的空白字符，返回结果
-- local input = "  ABC"
-- print(string.ltrim(input))
-- 输出 ABC，输入字符串前面的两个空格被去掉了
-- 空白字符包括：
-- -   空格
-- -   制表符 \t
-- -   换行符 \n
-- -   回到行首符 \r
--
--@function [parent=#strings] ltrim
--@param string#string input 输入字符串
--@return string#string 
function strings.ltrim(input)
    return string.gsub(input, "^[ \t\n\r]+", "")
end


---------------------------
--去除输入字符串尾部的空白字符，返回结果
-- local input = "ABC  "
-- print(string.rtrim(input))
-- 输出 ABC，输入字符串前面的两个空格被去掉了
-- 空白字符包括：
-- -   空格
-- -   制表符 \t
-- -   换行符 \n
-- -   回到行首符 \r
--
--@function [parent=#strings] rtrim
--@param string#string input 输入字符串
--@return string#string 
function strings.rtrim(input)
    return string.gsub(input, "[ \t\n\r]+$", "")
end


---------------------------
--去掉字符串首尾的空白字符，返回结果
-- local input = "  ABC  "
-- print(string.trim(input))
-- 输出 ABC，输入字符串前面的两个空格被去掉了
-- 空白字符包括：
-- -   空格
-- -   制表符 \t
-- -   换行符 \n
-- -   回到行首符 \r
--
--@function [parent=#strings] trim
--@param string#string input 输入字符串
--@return string#string 
function strings.trim(input)
    input = string.gsub(input, "^[ \t\n\r]+", "")
    return string.gsub(input, "[ \t\n\r]+$", "")
end


---------------------------
--将字符串的第一个字符转为大写，返回结果
--local input = "hello"
-- print(string.ucfirst(input))
-- 输出 Hello
--
--@function [parent=#strings] ucfirst
--@param string#string input description1
--@return string#string
function strings.ucfirst(input)
    return string.upper(string.sub(input, 1, 1)) .. string.sub(input, 2)
end


function strings.urlencodechar(char)
    return "%" .. string.format("%02X", string.byte(char))
end


---------------------------
--将字符串转换为符合 URL 传递要求的格式，并返回转换结果
-- local input = "hello world"
-- print(string.urlencode(input))
-- 输出
-- hello%20world
--
--@function [parent=#strings] urlencode
--@param string#string input 输入字符串
--@return string#string 转换后的结果
function strings.urlencode(input)
    -- convert line endings
    input = string.gsub(tostring(input), "\n", "\r\n")
    -- escape all characters but alphanumeric, '.' and '-'
    input = string.gsub(input, "([^%w%.%- ])", urlencodechar)
    -- convert spaces to "+" symbols
    return string.gsub(input, " ", "+")
end


---------------------------
--将 URL 中的特殊字符还原，并返回结果
-- local input = "hello%20world"
-- print(string.urldecode(input))
-- 输出
-- hello world
--
--@function [parent=#strings] urldecode
--@param string#string input 输入字符串
--@return string#string 转换后的结果
function strings.urldecode(input)
    input = string.gsub (input, "+", " ")
    input = string.gsub (input, "%%(%x%x)", function(h) return string.char(checknumber(h,16)) end)
    input = string.gsub (input, "\r\n", "\n")
    return input
end


---------------------------
--计算 UTF8 字符串的长度，每一个中文算一个字符
-- local input = "你好World"
-- print(string.utf8len(input))
-- 输出 7
--
--@function [parent=#strings] utf8len
--@param string#string input 输入字符串
--@return integer#integer 长度
function strings.utf8len(input)
    local len  = string.len(input)
    local left = len
    local cnt  = 0
    local arr  = {0, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc}
    while left ~= 0 do
        local tmp = string.byte(input, -left)
        print(tmp)
        local i   = #arr
        while arr[i] do
            if tmp >= arr[i] then
                left = left - i
                break
            end
            i = i - 1
        end
        cnt = cnt + 1
    end
    return cnt
end


---------------------------
--将数值格式化为包含千分位分隔符的字符串
-- print(string.formatnumberthousands(1924235))
-- 输出 1,924,235
--
--@function [parent=#strings] formatnumberthousands
--@param number#number num 数值
--@return string#string 格式化结果
function strings.formatnumberthousands(num)
    local formatted = tostring(checknumber(num))
    local k
    while true do
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if k == 0 then break end
    end
    return formatted
end



---------------------------
--byte 2 hex
--@function [parent=#strings] hex
--@param integer#integer s input
--@return string#string result
function strings.hex(s)
    s=string.gsub(s,"(.)",function (x) return string.format("%02X",string.byte(x)) end)
    return s
end


return strings