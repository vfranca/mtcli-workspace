@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variaveis de ambiente
set envpath=C:/.env
if "%~1" == "" (
dotenv --file %envpath% list 
goto :EOF
)
if "%~2" == "" (
dotenv --file %envpath% get %1
goto :EOF
)
dotenv --file %envpath% set %1 %2
