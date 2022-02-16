@echo off
rem mtcli
rem variáveis de ambiente
rem limite de perda do dia
if "%1" == "" (
echo %limite%
goto :EOF
)
set limite=%1
