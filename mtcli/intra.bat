@echo off
rem variáveis
rem intraday
call mtcli
if "%1" == "" (
echo %INTRADAY%
goto :EOF
)
if %1 == 0 (
set intraday=""
goto :EOF
)
set intraday=%3.%2.%1
