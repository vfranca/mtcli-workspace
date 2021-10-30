@echo off
rem mtcli
rem modo intraday
if %id% == "" (
set intraday=desligado
) else (
set intraday=ligado
)
if "%1" == "" (
set id=""
echo %ano%.%mes%.%dia% intraday desativado
goto :EOF
)
set dia=%1
set id=%ano%.%mes%.%dia%
echo %id% intraday ativado
