@echo off
:����svn�����·��
set SVN=C:/Program Files/TortoiseSVN/bin
:���ù����ļ���·��
set PATH=E:\work
set CODE_PATH=%PATH%\code
set PHP_PATH=%CODE_PATH%\php

:����Ҫsvn�����ļ��е�·����������ÿ��ֵ�Կո�ָ���
set SOURCE_ARR=%PHP_PATH%\52.8.79.162\ %PHP_PATH%\52.74.254.237\ %PHP_PATH%\58.64.129.135\ %PHP_PATH%\59.188.5.237\ %CODE_PATH%\java %CODE_PATH%\shell %PATH%\LpWebPageAnalyse %PATH%\document %PATH%\documents %PATH%\apidoc
:ִ��svn��������
for %%i in (%SOURCE_ARR%) do "%SVN%\TortoiseProc.exe" /command:update /path:"%%i" echo 1 /closeonend:2

pause