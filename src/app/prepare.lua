---------------------------
--
--
--@module prepare
local prepare = {}


---------------------------
--准备数据表
--@function [parent=#prepare] tables
function prepare.datas()
end
---------------------------
--准备数据表
--@function [parent=#prepare] tables
function prepare.tables()
 
    print("=============================================")
    print("数据加载完成")
    print("=============================================")
end


---------------------------
--准备动作
--@function [parent=#prepare] actions 
function prepare.actions()
    ActionManager.actions[msgdef.LOGIN]="app.action.LoginAction"
end

return prepare
