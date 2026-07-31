

@echo off
rem Delete the registry key to restore the default Windows 11 context menu
reg delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f

rem Restart Windows Explorer to apply changes instantly
taskkill /f /im explorer.exe
start explorer.exe

echo Modern context menu restored!
pause
