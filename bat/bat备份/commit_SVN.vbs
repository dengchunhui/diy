Set objShell = CreateObject("Wscript.Shell") 
strCommandLine = "commit_SVN.bat" '������װ����
objShell.Run(strCommandLine)
set WshShell = CreateObject("WScript.Shell")

WScript.Sleep 2000 '��ʱ1��
WshShell.SendKeys "%R" 'ģ�ⰴ�س�
WScript.Sleep 2000 '��ʱ1��
WshShell.SendKeys "{DOWN}"
WshShell.SendKeys "{DOWN}"
WshShell.SendKeys "%O"
WshShell.SendKeys "%O"