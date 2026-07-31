@echo off
rem Add the registry key to enable the classic Windows 11 context menu
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

rem Restart Windows Explorer to apply changes instantly
taskkill /f /im explorer.exe
start explorer.exe

echo Context menu updated!
pause
