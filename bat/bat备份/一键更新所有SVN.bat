@echo off
cls
color 0a

set SOURCE=Z:\dch.crmdev.jxch168.com
Set SVN=D:/Program Files/TortoiseSVN/bin

echo. ==========SVN �Զ����¹���==========
echo. ��ʼ����Ŀ¼%SOURCE%


"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2
echo. ==============����dch.crmdev.jxch168.com���==============

set SOURCE=C:\Users\DELL\Desktop\product

"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2
echo. ==============����product���==============

set SOURCE=C:\Users\DELL\Desktop\jxch_test

"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2
echo. ==============����jxch_test���==============

set SOURCE=Z:\dch.dev.jxch168.com

"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2
echo. ==============����dch.dev.jxch168.com���==============

#pause