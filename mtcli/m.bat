@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variaveis de ambiente
set envfile=%SystemDrive%/.env
if "%1" == "" (
dotenv --file %envfile% get CSV_PATH
goto :EOF
)
set MT5=%1
set m=%MT5%
dotenv --file %envfile% set CSV_PATH %1
