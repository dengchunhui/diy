@echo off
cls
color 0a

set SOURCE=C:\Users\DELL\Desktop\jxch_test
Set SVN=D:/Program Files/TortoiseSVN/bin

echo. ==========SVN 自动更新工具==========
echo. 开始更新目录%SOURCE%


"%SVN%\TortoiseProc.exe" /command:merge /path:"%SOURCE%" /closeonend:2
echo. ==============更新dch.crmdev.jxch168.com完成==============


#pause