@echo off
rem mtcli
rem marcações
rem saldo do dia
call mtcli
if "%1" == "" (
echo SALDO %SLD%
goto :EOF
)
set SLD=%1
