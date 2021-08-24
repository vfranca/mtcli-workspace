@echo off
rem workspace do mtcli
rem casas decimais
set dotenvfile=C:/.env
if "%1" == "" (
dotenv --file %dotenvfile% get DIGITS
goto :EOF
)
dotenv --file %dotenvfile% set DIGITS %1
