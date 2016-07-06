
---------------------------
--视图管理器,每个游戏一个进程
--
--@module AppViews
local AppViews = class("AppViews")


function AppViews:ctor()
    self.scene  = nil -- 当前场景
    self.app = nil
    self.views  = {}
    self.orderz = 10000  --默认的层高，自动增长
end


---------------------------
--设置当前管理的场景
--@function [parent=#AppViews] setScene
--@param self
--@param Scene#Scene scene 当前管理的场景
--@return AppViews#AppViews 自身句柄
function AppViews:setScene(scene)
    self.scene = scene
    self.orderz = 10000  --默认的层高，自动增长
    return self
end

---------------------------
--设置当前管理的场景
--@function [parent=#AppViews] setScene
--@param self
--@param Scene#Scene scene 当前管理的场景
--@return AppViews#AppViews 自身句柄
function AppViews:orderZ()
    return self.orderz
end


---------------------------
--设置当前视图管理器下的app管理器
--@function [parent=#AppViews] setApp
--@param self
--@param AppBase#AppBase app 当前管理的场景
--@return AppViews#AppViews 自身句柄
function AppViews:setApp(app)
    self.app = app
    return self
end


---------------------------
--设置当前管理的场景
--@function [parent=#AppViews] getScene
--@param self
--@return Scene#Scene 场景句柄
function AppViews:getScene()
    return self.scene
end



---------------------------
--添加一个视图到当前场景中,通过Ccx的文件名
--@function [parent=#AppViews] addViewByName
--@param self
--@return AppViews#AppViews 自身句柄
function AppViews:addViewByName(luaName, name ,parent)
    local view = require(luaName):create(self.app,name)
    local tag = self.orderz + 1
    if name then
        self.views[name] = {tag = tag, obj = view}
    end
    if not parent  then
        parent = self.scene
    end
    parent:addChild(view,self:orderZ(),tag)
    return view
end


---------------------------
--注册一个ViewBase实例到管理器
--@function [parent=#AppViews] registerView
--@param self
--@param ViewBase#ViewBase viewBase 实例化视图
--@return AppViews#AppViews 自身句柄
function AppViews:registerView(viewBase)
    local view = viewBase
    local tag = self.orderz + 1
    if viewBase:getName() then
        self.views[viewBase:getName()] = {tag = tag, obj = view}
    end
    return self
end


---------------------------
--删除ViewBase从当前场景中
--@function [parent=#AppViews] removeView
--@param self
--@param string#string name view命名
--@return AppViews#AppViews 自身句柄
function AppViews:removeView(name)
    if self.views[name] then
        self.views[name].obj:closeSelf()
        self.views[name]=nil
    end
    return self
end

---------------------------
--从当前场景中获取ViewBase
--@function [parent=#AppViews] getView
--@param self
--@param string#string name view命名
--@return ViewModel#ViewModel 自身句柄
function AppViews:getView(name)
    if self.views[name] then
        return self.views[name].obj
    end
end


---------------------------
--清除所有场景对象
--@function [parent=#AppViews] clearAll
--@param self
--@return AppViews#AppViews 自身句柄
function AppViews:clearAll()
    if  self.scene then
        if #self.views > 0 then
            for _, view in ipairs(self.views) do
                self:removeView(view.name)
            end
        end
        self.scene  = nil -- 当前场景
        self.views  = {}
        self.orderz = 10000
    end
    return self
end



return AppViews

