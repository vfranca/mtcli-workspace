@echo off
rem mtcli
rem variáveis de ambiente
rem saldo do dia
call mtcli
if "%1" == "" (
echo %SLD%
goto :EOF
)
set SLD=%1
