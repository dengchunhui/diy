@echo off
:����svn�����·��
set SVN=C:/Program Files/TortoiseSVN/bin

:����Ҫsvn�����ļ��е�·����������ÿ��ֵ�Կո�ָ���
set SOURCE_ARR=E:\work/code\php\52.8.79.162\ E:\work/code\php\52.74.254.237\ E:\work/code\php\58.64.129.135\ E:\work/code\php\59.188.5.237\ E:\work/code\java E:\work/code\shell E:\work\product E:\work\LpWebPageAnalyse E:\work\document
:ִ��svn��������
for %%i in (%SOURCE_ARR%) do "%SVN%\TortoiseProc.exe" /command:update /path:"%%i" echo 1 /closeonend:2