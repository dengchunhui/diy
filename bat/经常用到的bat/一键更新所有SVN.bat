@echo off
:设置svn软件的路径
set SVN=C:/Program Files/TortoiseSVN/bin
:设置公共文件的路径
set PATH=E:\work
set CODE_PATH=%PATH%\code
set PHP_PATH=%CODE_PATH%\php

:设置要svn更新文件夹的路径（数组中每个值以空格分隔）
set SOURCE_ARR=%PHP_PATH%\52.8.79.162\ %PHP_PATH%\52.74.254.237\ %PHP_PATH%\58.64.129.135\ %PHP_PATH%\59.188.5.237\ %CODE_PATH%\java %CODE_PATH%\shell %PATH%\LpWebPageAnalyse %PATH%\document %PATH%\documents %PATH%\apidoc
:执行svn批量更新
for %%i in (%SOURCE_ARR%) do "%SVN%\TortoiseProc.exe" /command:update /path:"%%i" echo 1 /closeonend:2

pause