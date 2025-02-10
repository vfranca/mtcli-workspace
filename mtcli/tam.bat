@echo off
rem mtcli
rem marcações
rem tamanho de contrato
call mtcli
if "%1" == "" (
echo TAM %TAM%
goto :EOF
)
set tam=%1
