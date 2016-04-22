==========自动 更新SVN目录文件.bat==============================

@echo off
cls
color 0a


set SOURCE=C:\Users\Administrator\Desktop\新建文件夹
Set SVN=D:\Program Files\TortoiseSVN\bin


echo. ==========SVN 自动更新工具==========
echo. 开始更新目录%SOURCE%


"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2
echo. ==============更新完成==============
set SOURCE =
set SVN =
pause