@echo off
rem mtcli
rem marcações
rem saldo do dia
call mtcli
if "%1" == "" (
echo %SLD%
goto :EOF
)
set SLD=%1
