@echo off
rem mtcli
rem variáveis de ambiente
rem moeda de negociação
call mtcli
if "%1" == "" (
echo MOEDA %MOEDA%
goto :EOF
)
set MOEDA=%1
