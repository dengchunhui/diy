CreateObject("Wscript.Shell").Run "cmd /c һ����ɨSVN.bat",0

set WshShell = CreateObject("WScript.Shell")
WScript.Sleep 1000 '��ʱ3��
WshShell.SendKeys "{ENTER}" 'ģ�ⰴ�»س���ִ����һ��
WScript.Sleep 2000 '��ʱ3��
