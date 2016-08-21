
---------------------------
-- 函数功能为 输出调试信息全局工具
-- @function cclog

cclog = function(...)
    print(string.format(...))
end


---------------------------
-- 函数功能为 返回详细的table信息
-- @function dump
function dump(o)
    if type(o) == 'table' then
        local s = '{'
        for k,v in pairs(o) do
            if type(k) ~= 'number' then k = '"'..k..'"' end
            s = s .. '['..k..'] = ' .. dump(v) .. ','
        end
        return s .. '} '
    else
        return tostring(o)
    end
end


---------------------------
-- 函数功能为 打印调试信息
-- @function logdump
function printtable(o)
    print(dump(o))
end


---------------------------
--打印调试信息
--用法示例
--printLog("WARN", "Network connection lost at %d", os.time())
--@function printLog
--@param sting#sting tag 调试信息的 tag
--@param string#string fmt 调试信息格式
function printLog(tag, fmt, ...)
    local t = {
        "[",
        string.upper(tostring(tag)),
        "] ",
        string.format(tostring(fmt), ...)
    }
    print(table.concat(t))
end


---------------------------
--输出 tag 为 ERR 的调试信息
--@function printLog
--@param string#string fmt 调试信息格式
function printError(fmt, ...)
    printLog("ERR", fmt, ...)
    print(debug.traceback("", 2))
end


---------------------------
--输出 tag 为 INFO 的调试信息
--@function printLog
--@param string#string fmt 调试信息格式
function printInfo(fmt, ...)
    printLog("INFO", fmt, ...)
end


---------------------------
--输出值的内容
--用法示例:
--local t = {comp = "chukong", engine = "quick"}
--dump(t)
--@function dumpval
--@param var#var value 要输出的值
--@pparam string#string desciption 输出内容前的文字描述 , desciption, nesting
--@pparam integer#integer nesting 输出时的嵌套层级，默认为 3
function printDump(value )
    if type(nesting) ~= "number" then nesting = 9 end

    local lookupTable = {}
    local result = {}

    local function _v(v)
        if type(v) == "string" then
            v = "\"" .. v .. "\""
        end
        return tostring(v)
    end

    local traceback = strings.split(debug.traceback("", 2), "\n")
    print("dump from: " .. strings.trim(traceback[3]))

    local function _dump(value, desciption, indent, nest, keylen)
        desciption = desciption or "<var>"
        local spc = ""
        if type(keylen) == "number" then
            spc = string.rep(" ", keylen - string.len(_v(desciption)))
        end
        if type(value) ~= "table" then
            result[#result +1 ] = string.format("%s%s%s = %s", indent, _v(desciption), spc, _v(value))
        elseif lookupTable[value] then
            result[#result +1 ] = string.format("%s%s%s = *REF*", indent, desciption, spc)
        else
            lookupTable[value] = true
            if nest > nesting then
                result[#result +1 ] = string.format("%s%s = *MAX NESTING*", indent, desciption)
            else
                result[#result +1 ] = string.format("%s%s = {", indent, _v(desciption))
                local indent2 = indent.."    "
                local keys = {}
                local keylen = 0
                local values = {}
                for k, v in pairs(value) do
                    keys[#keys + 1] = k
                    local vk = _v(k)
                    local vkl = string.len(vk)
                    if vkl > keylen then keylen = vkl end
                    values[k] = v
                end
                table.sort(keys, function(a, b)
                    if type(a) == "number" and type(b) == "number" then
                        return a < b
                    else
                        return tostring(a) < tostring(b)
                    end
                end)
                for i, k in ipairs(keys) do
                    _dump(values[k], k, indent2, nest + 1, keylen)
                end
                result[#result +1] = string.format("%s}", indent)
            end
        end
    end
    _dump(value, desciption, "- ", 1)

    for i, line in ipairs(result) do
        print(line)
    end
end



---------------------------
--输出格式化字符串
--printf("The value = %d", 100)
--@function printf
--@param string#string fmt 输出格式
function printf(fmt, ...)
    print(string.format(tostring(fmt), ...))
end


