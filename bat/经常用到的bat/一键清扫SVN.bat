@echo off
cls
color 0a

set SOURCE=Z:\dch.dev.jxch168.com
set SVN=D:/Program Files/TortoiseSVN/bin

"%SVN%\TortoiseProc.exe" /command:cleanup /path:"%SOURCE%" /closeonend:2

#pause