@echo off
set "APP=%~dp0app.html"
set "U=file:///%APP:\=/%"
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" goto edge86
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" goto edge64
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" goto chrome64
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" goto chrome86
echo Edge or Chrome was not found. Opening in your default browser.
start "" "%APP%"
exit /b
:edge86
start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="%U%"
exit /b
:edge64
start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" --app="%U%"
exit /b
:chrome64
start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app="%U%"
exit /b
:chrome86
start "" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" --app="%U%"
exit /b
