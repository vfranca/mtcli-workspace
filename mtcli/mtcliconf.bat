@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem
rem configurações do mtcli
rem
set envpath=C:/.env
rem
rem exibe as configurações do mtcli
rem
if "%~1" == "" (
dotenv --file %envpath% list 
goto :EOF
)
rem
if "%~2" == "" (
dotenv --file %envpath% get %1
goto :EOF
)
rem
dotenv --file %envpath% set %1 %2
rem
