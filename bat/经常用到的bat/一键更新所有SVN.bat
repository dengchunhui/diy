@echo off
:设置svn软件的路径
set SVN=C:/Program Files/TortoiseSVN/bin

:设置SVN集中管理的主目录
set svn_path=E:
:设置要svn更新文件夹的路径（数组中每个值以空格分隔）
set SOURCE_ARR=%svn_path%\workCode\php %svn_path%\workCode\java %svn_path%\workCode\shell %svn_path%\work\product %svn_path%\work\LpWebPageAnalyse
:执行svn批量更新
for %%i in (%SOURCE_ARR%) do "%SVN%\TortoiseProc.exe" /command:update /path:"%%i" echo 1 /closeonend:2