@echo off
cls
color 0a

set SOURCE=Z:\dch.crmdev.jxch168.com
Set SVN=D:/Program Files/TortoiseSVN/bin

echo. ==========SVN 自动更新工具==========
echo. 开始更新目录%SOURCE%


"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2
echo. ==============更新dch.crmdev.jxch168.com完成==============

set SOURCE=C:\Users\DELL\Desktop\product

"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2
echo. ==============更新product完成==============

set SOURCE=C:\Users\DELL\Desktop\jxch_test

"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2
echo. ==============更新jxch_test完成==============

set SOURCE=Z:\dch.dev.jxch168.com

"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2
echo. ==============更新dch.dev.jxch168.com完成==============

#pause