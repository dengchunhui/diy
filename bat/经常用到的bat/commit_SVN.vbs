Set objShell = CreateObject("Wscript.Shell") 
strCommandLine = "commit_SVN.bat" '启动安装程序
objShell.Run(strCommandLine)
set WshShell = CreateObject("WScript.Shell")

WScript.Sleep 2000 '延时1秒
WshShell.SendKeys "%R" '模拟按回车
WScript.Sleep 2000 '延时1秒
WshShell.SendKeys "{DOWN}"
WshShell.SendKeys "{DOWN}"
WshShell.SendKeys "%O"
WshShell.SendKeys "%O"