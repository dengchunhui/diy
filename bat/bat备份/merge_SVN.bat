@echo off
cls
color 0a

set SOURCE=C:\Users\DELL\Desktop\jxch_test
Set SVN=D:/Program Files/TortoiseSVN/bin

echo. ==========SVN �Զ����¹���==========
echo. ��ʼ����Ŀ¼%SOURCE%


"%SVN%\TortoiseProc.exe" /command:merge /path:"%SOURCE%" /closeonend:2
echo. ==============����dch.crmdev.jxch168.com���==============


#pause