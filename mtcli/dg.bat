@echo off
rem workspace do mtcli
rem Altera os dígitos das cotações
rem entradas
set dotenvfile=C:/.env
set digits=%1
rem ajuda
if "%1" == "" (
echo digite o numero de casas decimais
goto :EOF
)
rem comandos
dotenv --file %dotenvfile% set DIGITS %digits%
