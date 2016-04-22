@echo off
taskkill /f /im HQCFS.exe
taskkill /f /im runner.dll
echo wscript.sleep 2000 > sleep.vbs
start /wait sleep.vbs
start  ""  "C:\Program Files\Huaqin\CFS\HQCFS.exe"
del /f /s /q sleep.vbs
exit  


