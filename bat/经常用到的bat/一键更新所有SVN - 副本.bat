@echo off
cls
color 0a

Set SVN=D:/Program Files/TortoiseSVN/bin

set SOURCE=C:\Users\DELL\Desktop\product
"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2

set SOURCE=C:\Users\DELL\Desktop\jxch_test
"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2

#set SOURCE=C:\Users\DELL\Desktop\jxchFrame
#"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2

#set SOURCE=C:\Users\DELL\Desktop\newJxch
#"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2

set SOURCE=Z:\dch.crmdev.jxch168.com
"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2

set SOURCE=Z:\dch.dev.jxch168.com
"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2

set SOURCE=Y:\dch.dev.newjxch168.com
"%SVN%\TortoiseProc.exe" /command:update /path:"%SOURCE%" /closeonend:2

#pause