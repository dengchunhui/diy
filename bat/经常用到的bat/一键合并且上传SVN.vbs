CreateObject("Wscript.Shell").Run "cmd /c merge_SVN.bat",0

set WshShell = CreateObject("WScript.Shell")

WScript.Sleep 1000 '延时1秒
WshShell.SendKeys "%N" '模拟按回车
WScript.Sleep 1000 '延时1秒
WshShell.SendKeys "%L" '模拟按ALT+O 
WScript.Sleep 2000 '延时1秒
WshShell.SendKeys "%O" '模拟按ALT+O 
WScript.Sleep 1000 '延时1秒
WshShell.SendKeys "%N" '模拟按ALT+O 
WshShell.SendKeys "%M" '模拟按ALT+O 
WScript.Sleep 1000 '延时1秒
WshShell.SendKeys "%o" '模拟按ALT+O 

WScript.Sleep 5000 '延时1秒

CreateObject("Wscript.Shell").Run "cmd /c commit_SVN.bat",0

set WshShell = CreateObject("WScript.Shell")

WScript.Sleep 2000 '延时1秒
WshShell.SendKeys "%R" '模拟按回车
WScript.Sleep 2000 '延时1秒
WshShell.SendKeys "{DOWN}"
WshShell.SendKeys "{DOWN}"
WshShell.SendKeys "%O"
WshShell.SendKeys "%O"