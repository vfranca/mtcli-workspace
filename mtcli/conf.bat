@echo off
rem mtcli
rem gerencia o .env
set envpath=C:/.env
cls
if "%~1" == "" (
dotenv --file %envpath% list 
goto :EOF
)
if "%~2" == "" (
dotenv --file %envpath% get %1
goto :EOF
)
dotenv --file %envpath% set %1 %2
