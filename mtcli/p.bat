@echo off
rem variáveis de ambiente
rem period
call mtcli
if "%1" == "" (
echo PERIODO %PERIOD%
goto :EOF
)
set PERIOD=%1
call term
