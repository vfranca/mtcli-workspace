@echo off
rem mtcli
rem casas decimais
set dotenvfile=%SystemDrive%/.env
if "%1" == "" (
dotenv --file %dotenvfile% get DIGITS
goto :EOF
)
dotenv --file %dotenvfile% set DIGITS %1
