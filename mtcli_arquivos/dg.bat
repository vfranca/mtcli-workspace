@echo off
rem Altera as casas decimais
rem variaveis de entrada
set dotenvfile=C:/.env
set digits=%1
rem ajuda
if "%1" == "" (
echo digite o numero de casas decimais
goto :EOF
)
rem
dotenv --file %dotenvfile% set DIGITS %digits%
