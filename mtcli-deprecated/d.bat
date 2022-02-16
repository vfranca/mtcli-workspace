@echo off
rem mtcli
rem variáveis .env
rem casas decimais
set dotenvfile=%SystemDrive%/.env
if "%1" == "" (
dotenv --file %dotenvfile% get DIGITS
goto :EOF
)
set digits=%1
dotenv --file %dotenvfile% set DIGITS %1
