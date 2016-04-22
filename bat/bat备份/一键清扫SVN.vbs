CreateObject("Wscript.Shell").Run "cmd /c 一键清扫SVN.bat",0

set WshShell = CreateObject("WScript.Shell")
WScript.Sleep 1000 '延时3秒
WshShell.SendKeys "{ENTER}" '模拟按下回车键执行下一步
WScript.Sleep 2000 '延时3秒
