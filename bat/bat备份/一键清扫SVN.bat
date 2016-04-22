@echo off
cls
color 0a

set SOURCE=Y:\dch.dev.newjxch168.com
set SVN=D:/Program Files/TortoiseSVN/bin

"%SVN%\TortoiseProc.exe" /command:cleanup /path:"%SOURCE%" /closeonend:2

#pause