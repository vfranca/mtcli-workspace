@echo off
rem mtcli
rem variáveis de ambiente
rem tamanho de contrato
call mtcli
if "%1" == "" (
echo %TAM%
goto :EOF
)
set tam=%1
