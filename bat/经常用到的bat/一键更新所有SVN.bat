@echo off
:����svn�����·��
set SVN=C:/Program Files/TortoiseSVN/bin

:����SVN���й������Ŀ¼
set svn_path=E:
:����Ҫsvn�����ļ��е�·����������ÿ��ֵ�Կո�ָ���
set SOURCE_ARR=%svn_path%\workCode\php %svn_path%\workCode\java %svn_path%\workCode\shell %svn_path%\work\product %svn_path%\work\LpWebPageAnalyse
:ִ��svn��������
for %%i in (%SOURCE_ARR%) do "%SVN%\TortoiseProc.exe" /command:update /path:"%%i" echo 1 /closeonend:2