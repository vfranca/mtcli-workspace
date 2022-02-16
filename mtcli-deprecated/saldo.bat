@echo off
rem mtcli
rem variáveis de ambiente
rem saldo mensal do trading
if "%1" == "" (
echo %saldo%
goto :EOF
)
set saldo=%1
