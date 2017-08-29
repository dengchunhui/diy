@echo off
:设置svn软件的路径
set SVN=C:/Program Files/TortoiseSVN/bin

:设置要svn更新文件夹的路径（数组中每个值以空格分隔）
set SOURCE_ARR=E:\workCode\php\52.8.79.162\ E:\workCode\php\52.74.254.237\ E:\workCode\php\58.64.129.135\ E:\workCode\php\59.188.5.237\ E:\workCode\java E:\workCode\shell E:\work\product E:\work\LpWebPageAnalyse
:执行svn批量更新
for %%i in (%SOURCE_ARR%) do "%SVN%\TortoiseProc.exe" /command:update /path:"%%i" echo 1 /closeonend:2