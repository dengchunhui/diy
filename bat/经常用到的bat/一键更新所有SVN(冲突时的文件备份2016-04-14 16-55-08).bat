@echo off
:设置svn软件的路径
set SVN=C:/Program Files/TortoiseSVN/bin

:设置SVN集中管理的主目录
set svn_path=F:\云同步\SVN相关
:设置要svn更新文件夹的路径（数组中每个值以空格分隔）
set SOURCE_ARR=%svn_path%\product %svn_path%\jxch_test %svn_path%\crm_test Z:\dch.crmdev.jxch168.com Z:\dch.dev.jxch168.com Y:\dch.dev.newjxch168.com Y:\dch.wx.jxch168.com 
:执行svn批量更新
for %%i in (%SOURCE_ARR%) do "%SVN%\TortoiseProc.exe" /command:update /path:"%%i" echo 1 /closeonend:2