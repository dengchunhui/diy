@echo off
:����svn�����·��
set SVN=C:/Program Files/TortoiseSVN/bin

:����Ҫsvn�����ļ��е�·����������ÿ��ֵ�Կո�ָ���
set SOURCE_ARR=E:\workCode\php\52.8.79.162\ E:\workCode\php\52.74.254.237\ E:\workCode\php\58.64.129.135\ E:\workCode\php\59.188.5.237\ E:\workCode\java E:\workCode\shell E:\work\product E:\work\LpWebPageAnalyse
:ִ��svn��������
for %%i in (%SOURCE_ARR%) do "%SVN%\TortoiseProc.exe" /command:update /path:"%%i" echo 1 /closeonend:2