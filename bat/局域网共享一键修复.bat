@echo off
cd /d %~dp0
color 2f
mode con cols=50 lines=30
title  ��������wnsdt��
:sc_top
cls
rd /s /q %temp%\okshare>nul 2>nul
md %temp%\okshare
ver | findstr "5.">nul && goto sc_menu
echo nt6>%temp%\okshare\nt6.txt && goto sc_menu
:sc_menu
echo.&echo.&echo.
echo             ����������һ���޸� 16.6.7
echo.
echo    --------------------------------------------
echo.&echo.&echo.
echo               1���鿴������Ϣ
echo.
echo               2���򵥹��������룩
echo.
echo               3�����빲���Է����룩
echo.
echo               4�������������
echo.
echo               5���������Ȩ��
echo.
echo               6����������뷴��
echo.
echo               7����  ��
echo.&echo.&echo.&echo.&echo.&echo.
set select=
set str1=1234567
set /p select= �������֣����س�:
if not defined select goto sc_wrong
echo %select%|findstr "[%str1%]">nul||goto sc_wrong
if %select%==1 (goto sc_info)
if %select%==2 (goto sc_zd)
if %select%==3 (goto sc_sd)
if %select%==4 (goto sc_gl) 
if %select%==5 (goto sc_help) 
if %select%==6 (goto sc_update) 
if %select%==7 (goto sc_exit) 
:sc_wrong
echo msgbox "ֻ������1-7������",,"��ʾ" >%temp%\okshare\404.vbs
start /w %temp%\okshare\404.vbs
goto sc_top
:sc_info
cls
echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.
echo                  ���ڴ�����Ϣ....
if exist %temp%\okshare\nt6.txt goto sc_nt6
:sc_nt5
echo.>>%temp%\okshare\info.txt
echo.>>%temp%\okshare\info.txt
ping www.baidu.com -n 1 >nul || goto sc_offline5
echo            ����������״̬��      [ ���� ]>>%temp%\okshare\info.txt & goto sc_ver_nt5
:sc_offline5
echo            ����������״̬��      [ ���� ]>>%temp%\okshare\info.txt
:sc_ver_nt5
echo ---------------------------------------------------------->>%temp%\okshare\info.txt
echo.>>%temp%\okshare\info.txt
for /f "skip=1 tokens=2-4 delims=, " %%a in ('wmic os get caption') do (
if exist %windir%\SysWOW64 echo         ϵͳ�汾��       %%a %%b %%c  64λ>>%temp%\okshare\info.txt & goto sc_ver_nt5_next
echo         ϵͳ�汾��       %%a %%b %%c  32λ>>%temp%\okshare\info.txt
)
:sc_ver_nt5_next
echo.>>%temp%\okshare\info.txt
echo         ���������            %COMPUTERNAME%>>%temp%\okshare\info.txt
echo.>>%temp%\okshare\info.txt
for /f "tokens=2 delims= " %%a in ('net config workstation^|findstr /c:"����վ��"') do echo         �����飺              %%a>>%temp%\okshare\info.txt & goto sc_info_nt5
:sc_info_nt5
echo.>>%temp%\okshare\info.txt
echo         ��ǰ�û���            %USERNAME%>>%temp%\okshare\info.txt
echo.>>%temp%\okshare\info.txt
for /f "delims=" %%a in ('date /t') do echo         �������ڣ�            %%a>>%temp%\okshare\info.txt
echo.>>%temp%\okshare\info.txt
for /f "delims=" %%a in ('time /t') do echo         ����ʱ�䣺            %%a>>%temp%\okshare\info.txt
echo ---------------------------------------------------------->>%temp%\okshare\info.txt
goto sc_info_more
:sc_nt6
echo.>>%temp%\okshare\info.txt
echo.>>%temp%\okshare\info.txt
ping www.baidu.com -n 1 >nul || goto sc_offline6
echo        ����������״̬��     [ ���� ]>>%temp%\okshare\info.txt & goto sc_ver_nt6
:sc_offline6
echo        ����������״̬��     [ ���� ]>>%temp%\okshare\info.txt
:sc_ver_nt6
echo -------------------------------------------------->>%temp%\okshare\info.txt
echo.>>%temp%\okshare\info.txt
for /f "skip=1 tokens=2-5 delims=?, " %%a in ('wmic os get caption') do (
if exist %windir%\SysWOW64 echo    ϵͳ�汾��      %%a %%b %%c %%d 64λ>>%temp%\okshare\info.txt & goto sc_ver_nt6_next
echo    ϵͳ�汾��       %%a %%b %%c %%d 32λ>>%temp%\okshare\info.txt
)
:sc_ver_nt6_next
echo.>>%temp%\okshare\info.txt
echo    ���������            %COMPUTERNAME%>>%temp%\okshare\info.txt
echo.>>%temp%\okshare\info.txt
for /f "tokens=2 delims= " %%a in ('net config workstation^|findstr /c:"����վ��"') do echo    �����飺              %%a>>%temp%\okshare\info.txt
echo.>>%temp%\okshare\info.txt
echo    ��ǰ�û���            %USERNAME%>>%temp%\okshare\info.txt
echo.>>%temp%\okshare\info.txt
for /f "delims=" %%a in ('date /t') do echo    �������ڣ�            %%a>>%temp%\okshare\info.txt
echo.>>%temp%\okshare\info.txt
for /f "delims=" %%a in ('time /t') do echo    ����ʱ�䣺            %%a>>%temp%\okshare\info.txt
echo -------------------------------------------------->>%temp%\okshare\info.txt
:sc_info_more
ipconfig /all>%temp%\okshare\temp.txt
if exist %temp%\okshare\nt6.txt findstr /v /c:"Windows IP ����" %temp%\okshare\temp.txt|findstr /v /c:"������"|findstr /v /c:"�� DNS ��׺"|findstr /v /c:"�ڵ�����"|findstr /v /c:"IP ·��������"|findstr /v /c:"WINS ����������">>%temp%\okshare\info.txt & goto sc_info_more2
findstr /v /c:"Windows IP Configuration" %temp%\okshare\temp.txt|findstr /v /c:"Host Name"|findstr /v /c:"Primary Dns Suffix"|findstr /v /c:"Node Type"|findstr /v /c:"IP Routing Enabled"|findstr /v /c:"WINS Proxy Enabled">>%temp%\okshare\info.txt
:sc_info_more2
findstr /i "��� teredo" %temp%\okshare\temp.txt>nul||goto sc_info_next
echo.>>%temp%\okshare\info.txt
echo.>>%temp%\okshare\info.txt
echo --------------------------------------------------------------->>%temp%\okshare\info.txt
echo ��ע�⡿��ϵͳ���ڹ�������������������ٶȣ��粻ʹ�ã�����رգ�>>%temp%\okshare\info.txt
echo.>>%temp%\okshare\info.txt
:sc_info_next
start /w notepad %temp%\okshare\info.txt
goto sc_top
:sc_zd
cls
echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.
echo                    �����޸�......
net user guest "">nul 2>nul
net user guest /active:yes>nul 2>nul
echo Windows Registry Editor Version 5.00>>%temp%\okshare\okshare.reg
echo.&echo.>>%temp%\okshare\okshare.reg
goto sc_main
:sc_sd
cls
echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.
echo                    �����޸�......
net user guest /active:no>nul 2>nul
echo Windows Registry Editor Version 5.00>>%temp%\okshare\okshare.reg
echo.&echo.>>%temp%\okshare\okshare.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0]>>%temp%\okshare\okshare.reg
echo "NtlmMinClientSec"=dword:00000000>>%temp%\okshare\okshare.reg
echo "NtlmMinServerSec"=dword:00000000>>%temp%\okshare\okshare.reg
goto sc_main
:sc_main
sc config LanmanWorkstation start= auto>nul 2>nul
sc config LanmanServer start= auto>nul 2>nul
sc config Winmgmt start= auto>nul 2>nul
sc config RpcSs start= auto>nul 2>nul
sc config Netman start= auto>nul 2>nul
sc config RasMan start= demand>nul 2>nul
sc config SSDPSRV start= auto>nul 2>nul
sc config BFE start= auto>nul 2>nul
sc config ALG start= demand>nul 2>nul
sc config SharedAccess start= auto>nul 2>nul
net start SharedAccess /y>nul 2>nul
sc config Browser start= auto>nul 2>nul
net start Browser /y>nul 2>nul
sc config Dnscache start= auto>nul 2>nul
net start Dnscache /y>nul 2>nul
sc config Dhcp start= auto>nul 2>nul
net start Dhcp /y>nul 2>nul
sc config lmhosts start= auto>nul 2>nul
net start lmhosts /y>nul 2>nul
sc config Spooler start= auto>nul 2>nul
net start Spooler /y>nul 2>nul
sc config upnphost start= demand>nul 2>nul
net start upnphost /y>nul 2>nul
if exist %temp%\okshare\nt6.txt goto sc_win7
:sc_winxp
sc config PlugPlay start= auto>nul 2>nul
sc config TapiSrv start= auto>nul 2>nul
sc config Nla start= auto>nul 2>nul
net start Nla /y>nul 2>nul
netsh firewall set opmode mode=disable>nul 2>nul
goto sc_main2_etc
:sc_win7
sc config DcomLaunch start= auto>nul 2>nul
sc config RpcEptMapper start= auto>nul 2>nul
sc config SamSs start= auto>nul 2>nul
sc config nsi start= auto>nul 2>nul
sc config SstpSvc start= demand>nul 2>nul
sc config MpsSvc start= auto>nul 2>nul
net start MpsSvc /y>nul 2>nul
sc config NlaSvc start= auto>nul 2>nul
sc config netprofm start= auto>nul 2>nul
sc config fdPHost start= auto>nul 2>nul
sc config FDResPub start= auto>nul 2>nul
netsh advfirewall set allprofiles state off>nul 2>nul
:sc_main2_etc
echo [Unicode]>>%temp%\okshare\admin_sec.inf
echo Unicode=yes>>%temp%\okshare\admin_sec.inf
echo [Version]>>%temp%\okshare\admin_sec.inf
echo signature="$CHICAGO$">>%temp%\okshare\admin_sec.inf
echo Revision=1>>%temp%\okshare\admin_sec.inf
echo [Privilege Rights]>>%temp%\okshare\admin_sec.inf
echo sedenynetworklogonright = >>%temp%\okshare\admin_sec.inf
echo senetworklogonright = Everyone,Administrators,Users,Power Users,Backup Operators,guest>>%temp%\okshare\admin_sec.inf
secedit /configure /db %temp%\okshare\admin_sec.sdb /cfg %temp%\okshare\admin_sec.inf /log %temp%\okshare\admin_sec.log /quiet
del /q %temp%\okshare\admin_sec.*>nul 2>nul
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa]>>%temp%\okshare\okshare.reg
echo "forceguest"=dword:00000000>>%temp%\okshare\okshare.reg
echo.&echo.>>%temp%\okshare\okshare.reg
echo "restrictanonymoussam"=dword:00000000>>%temp%\okshare\okshare.reg
echo.&echo.>>%temp%\okshare\okshare.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Browser\Parameters]>>%temp%\okshare\okshare.reg
echo "MaintainServerList"="Auto">>%temp%\okshare\okshare.reg
echo "IsDomainMaster"="FALSE">>%temp%\okshare\okshare.reg
echo.&echo.>>%temp%\okshare\okshare.reg
echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RemoteComputer\NameSpace\{D6277990-4C6A-11CF-8D87-00AA0060F5BF}]>>%temp%\okshare\okshare.reg
echo.&echo.>>%temp%\okshare\okshare.reg
regedit /s %temp%\okshare\okshare.reg
net use * /del /y>nul 2>nul
net config server /hidden:no>nul 2>nul
goto sc_tip
:sc_gl
cls
echo.&echo.&echo.&echo.
echo                �������ļ��й�������
echo.&echo.
echo        ���ܣ������������޸Ĺ����ļ�Ȩ��
echo   ----------------------------------------------
echo.&echo.&echo.&echo.
echo         ����ࡰ�����ɲ鿴�����б�
echo.
echo         �Ҽ���ࡰ�������½�����
echo.
echo         �Ҽ������ļ���ֹͣ�����ܶ�ѡ����
echo.
echo         �Ҽ������ļ�ѡ�����ԡ����޸�Ȩ�ޣ�
echo.&echo.&echo.&echo.&echo.&echo.&echo.
fsmgmt.msc
cls
echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.&echo.
echo                    ��������ɣ�
echo.&echo.&echo.
echo            ��������������أ���ֱ�ӹرգ�
pause>nul 2>nul
goto sc_top
:sc_tip
echo MyVar=MsgBox("�޸���ɣ������������������"^&chr(13)^&chr(13)^&chr(13)^&"�绹���ܹ���ѡ��4.���������������Ȩ��"^&chr(13)^&"��������Ȩ�ޣ�ѡ��5.�������Ȩ�ޡ��鿴˵��", vbSystemModal, "��ʾ")>%temp%\okshare\404.vbs
start /w %temp%\okshare\404.vbs
goto sc_exit
:sc_help
cls
start "%ProgramFiles%\Internet Explorer\iexplore.exe" "http://bbs.pcbeta.com/forum.php?mod=viewthread&tid=1347877&page=9#pid46049727"
goto sc_top
:sc_update
cls
start "%ProgramFiles%\Internet Explorer\iexplore.exe" "http://bbs.pcbeta.com/viewthread-802430-1-1.html"
goto sc_top
:sc_exit
rd /s /q %temp%\okshare>nul 2>nul
exit
