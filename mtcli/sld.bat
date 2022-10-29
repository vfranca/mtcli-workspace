@echo off
rem mtcli
rem variáveis de ambiente
rem saldo mensal do trading
if "%1" == "" (
echo %SLD%
goto :EOF
)
set SLD=%1
set SALDO=%1
