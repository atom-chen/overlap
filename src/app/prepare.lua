---------------------------
--
--
--@module prepare
local prepare = {}


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
    ActionExecutor.actions[msgdef.SyncEcho]="app.action.SyncEchoAction"
    ActionExecutor.actions[msgdef.PayValidate]="app.action.PayValidateAction"
    ActionExecutor.actions[msgdef.RankHighest]="app.action.RankHighestAction"
    ActionExecutor.actions[msgdef.RankPlayerInfo]="app.action.RankPlayerInfoAction"
    ActionExecutor.actions[msgdef.RankAllInfo]="app.action.RankAllInfoAction"
    ActionExecutor.actions[msgdef.RankCommit]="app.action.RankCommitAction"
    print("=============================================")
    print("动作加载完成")
    print("=============================================")
end

return prepare
