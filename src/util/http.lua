--require "json"

local http = class("http")

http.method = {}
http.method.POST = "POST"
http.method.GET = "GET"

function http:ctor()
    self.callback = nil
end

local function parseTrueFalse(t)
    t = string.lower(tostring(t))
    if t == "yes" or t == "true" then return true end
    return false
end

-- 数据转换，将请求数据由 table 型转换成 string，参数：table
function http:dataParse(data)
    if "table" ~= type(data) then
        printInfo("data is not a table")
        return nil
    end

    local tmp = {}
    for key, value in pairs(data) do
        table.insert(tmp,key.."="..value)
    end

    local newData = ""
    for i=1,#tmp do
        newData = newData..tostring(tmp[i])
        if i<#tmp then
            newData = newData.."&&"
        end
    end
--    print("------- name is "..newData)
    return newData
end

function http:get(url,data,callback)
    printLog("HTTP",url)
	self:send("GET",url,data,callback)
end

function http:post(url,data,callback)
    self:send("POST",url,data,callback)
end


-- 发送数据，参数：string，string，table
function http:send(type, url, data, callback)
    local xhr = cc.XMLHttpRequest:new() --new 一个http request 实例
    self.callback = callback    --设置需要执行的函数

--    local newData = self:dataParse(data)
--    print(newData)
--    if nil == newData then
--        return 
--    end

    -- response回调函数
    local function responseCallback()
--        print("httpSingleton - "..xhr.response)
        if nil ~= self.callback then
            self.callback(xhr)
        else
            printInfo("callback is nil")
        end
    end

    -- 设置返回值类型及回调函数
    xhr.responseType = cc.XMLHTTPREQUEST_RESPONSE_STRING
    xhr:registerScriptHandler(responseCallback)

    -- 请求方式判断
    if http.method.POST == type then
        xhr:open(http.method.POST, url)
--        xhr:registerScriptHandler(responseCallback)
        
        xhr:send(data)
    elseif http.method.GET == type then
        xhr:open(http.method.GET, url.."?"..data)
        xhr:send()
    else
        printInfo("ERROR : type only can be \"Post\" or \"GET\"")
    end
    
end


function http.makeCookieString(cookie)
    local arr = {}
    for name, value in pairs(cookie) do
        if type(value) == "table" then
            value = tostring(value.value)
        else
            value = tostring(value)
        end

        arr[#arr + 1] = tostring(name) .. "=" .. string.urlencode(value)
    end

    return table.concat(arr, "; ")
end

function http.parseCookie(cookieString)
    local cookie = {}
    local arr = string.split(cookieString, "\n")
    for _, item in ipairs(arr) do
        item = string.trim(item)
        if item ~= "" then
            local parts = string.split(item, "\t")
            -- ".amazon.com" represents the domain name of the Web server that created the cookie and will be able to read the cookie in the future
            -- TRUE indicates that all machines within the given domain can access the cookie
            -- "/" denotes the path within the domain for which the variable is valid
            -- "FALSE" indicates that the connection is not secure
            -- "2082787601" represents the expiration date in UNIX time (number of seconds since January 1, 1970 00:00:00 GMT)
            -- "ubid-main" is the name of the cookie
            -- "002-2904428-3375661" is the value of the cookie

            local c = {
                domain = parts[1],
                access = parseTrueFalse(parts[2]),
                path = parts[3],
                secure = parseTrueFalse(parts[4]),
                expire = checkint(parts[5]),
                name = parts[6],
                value = string.urldecode(parts[7]),
            }

            cookie[c.name] = c
        end
    end

    return cookie
end

--[[--

创建异步 HTTP 请求，并返回 cc.HTTPRequest 对象。 

~~~ lua

function onRequestFinished(event)
local ok = (event.name == "completed")
local request = event.request

if not ok then
-- 请求失败，显示错误代码和错误消息
print(request:getErrorCode(), request:getErrorMessage())
return
end

local code = request:getResponseStatusCode()
if code ~= 200 then
-- 请求结束，但没有返回 200 响应代码
print(code)
return
end

-- 请求成功，显示服务端返回的内容
local response = request:getResponseString()
print(response)
end

-- 创建一个请求，并以 POST 方式发送数据到服务端
local url = "http://www.mycompany.com/request.php"
local request = net.createHTTPRequest(onRequestFinished, url, "POST")
request:addPOSTValue("KEY", "VALUE")

-- 开始请求。当请求完成时会调用 callback() 函数
request:start()

~~~

@return HTTPRequest 结果

]]
function http.createHTTPRequest(callback, url, method)
    if not method then method = "GET" end
    if string.upper(tostring(method)) == "GET" then
        method = cc.kCCHTTPRequestMethodGET
    else
        method = cc.kCCHTTPRequestMethodPOST
    end
    return cc.HTTPRequest:createWithUrl(callback, url, method)
end

--- Upload a file through a HTTPRequest instance.
-- @author zrong(zengrong.net)
-- Creation: 2014-04-14
-- @param callback As same as the first parameter of net.createHTTPRequest.
-- @param url As same as the second parameter of net.createHTTPRequest.
-- @param datas Includes following values:
--      fileFiledName(The input label name that type is file);
--      filePath(A absolute path for a file)
--      contentType(Optional, the file's contentType, default is application/octet-stream)
--      extra(Optional, the key-value table that transmit to form)
-- for example:

--[[--
http.uploadFile(function(evt)
if evt.name == "completed" then
local request = evt.request
printf("REQUEST getResponseStatusCode() = %d", request:getResponseStatusCode())
printf("REQUEST getResponseHeadersString() =\n%s", request:getResponseHeadersString())
printf("REQUEST getResponseDataLength() = %d", request:getResponseDataLength())
printf("REQUEST getResponseString() =\n%s", request:getResponseString())
end
end,
"http://127.0.0.1/upload.php",
{
fileFieldName="filepath",
filePath=device.writablePath.."screen.jpg",
contentType="Image/jpeg",
extra={
{"act", "upload"},
{"submit", "upload"},
}
}
)
]]
--      
function http.uploadFile(callback, url, datas)
    assert(datas or datas.fileFieldName or datas.filePath, "Need file datas!")
    local request = net.createHTTPRequest(callback, url, "POST")
    local fileFieldName = datas.fileFieldName
    local filePath = datas.filePath
    local contentType = datas.contentType
    if contentType then
        request:addFormFile(fileFieldName, filePath, contentType)
    else
        request:addFormFile(fileFieldName, filePath)
    end
    if datas.extra then
        for i in ipairs(datas.extra) do
            local data = datas.extra[i]
            request:addFormContents(data[1], data[2])
        end
    end
    request:start()
    return request
end


return http

