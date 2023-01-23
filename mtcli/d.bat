@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem variaveis de ambiente
if "%1" == "" (
echo %DIGITOS%
goto :EOF
)
set DIGITOS=%1
set d=%DIGITOS%
