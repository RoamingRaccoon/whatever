@echo off
(powershell Get-Clipboard & echo.) >temp & (set /p url=)<temp
"C:\Program Files\Mozilla Firefox\firefox.exe" -P no-addons %url%
@echo on
