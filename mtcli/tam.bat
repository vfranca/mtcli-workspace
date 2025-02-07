@echo off
rem mtcli
rem variáveis de ambiente
rem tamanho de contrato
call mtcli
if "%1" == "" (
echo TAMANHO %TAM%
goto :EOF
)
set tam=%1
