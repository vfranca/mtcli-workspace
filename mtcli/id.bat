@echo off
rem mtcli
rem modo intraday
if %id% == "" (
set intraday=desligado
) else (
set intraday=ligado
)
if "%1" == "" (
echo %ano%.%mes%.%dia% %intraday%
goto :EOF
)
set dia=%1
set id=%ano%.%mes%.%dia%
echo %id% ligado
