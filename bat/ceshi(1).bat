==========�Զ� ����SVNĿ¼�ļ�.bat==============================

@echo off
cls
color 0a


set SOURCE=C:\Users\Administrator\Desktop\�½��ļ���
Set SVN=D:\Program Files\TortoiseSVN\bin


echo. ==========SVN �Զ����¹���==========
echo. ��ʼ����Ŀ¼%SOURCE%


"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2
echo. ==============�������==============
set SOURCE =
set SVN =
pause