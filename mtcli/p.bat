@echo off
rem variáveis de ambiente
rem period
call mtcli
if "%1" == "" (
echo %PERIOD%
goto :EOF
)
set PERIOD=%1
