@echo off
:����svn�����·��
set SVN=C:/Program Files/TortoiseSVN/bin

:����SVN���й������Ŀ¼
set svn_path=F:\��ͬ��\SVN���
:����Ҫsvn�����ļ��е�·����������ÿ��ֵ�Կո�ָ���
set SOURCE_ARR=%svn_path%\product %svn_path%\jxch_test %svn_path%\crm_test Z:\dch.crmdev.jxch168.com Z:\dch.dev.jxch168.com Y:\dch.dev.newjxch168.com Y:\dch.wx.jxch168.com 
:ִ��svn��������
for %%i in (%SOURCE_ARR%) do "%SVN%\TortoiseProc.exe" /command:update /path:"%%i" echo 1 /closeonend:2