CreateObject("Wscript.Shell").Run "cmd /c merge_SVN.bat",0

set WshShell = CreateObject("WScript.Shell")

WScript.Sleep 1000 '��ʱ1��
WshShell.SendKeys "%N" 'ģ�ⰴ�س�
WScript.Sleep 1000 '��ʱ1��
WshShell.SendKeys "%L" 'ģ�ⰴALT+O 
WScript.Sleep 500 '��ʱ1��
WshShell.SendKeys "%O" 'ģ�ⰴALT+O 
WScript.Sleep 500 '��ʱ1��
WshShell.SendKeys "%N" 'ģ�ⰴALT+O 
WshShell.SendKeys "%M" 'ģ�ⰴALT+O 
WScript.Sleep 500 '��ʱ1��
WshShell.SendKeys "%o" 'ģ�ⰴALT+O 