@echo off
rem mtcli
rem Copyright 2022 Valmir França
rem variaveis de ambiente
set envfile=%SystemDrive%/.env
if "%1" == "" (
rem dotenv --file %envfile% get VIEW
echo %VIEW%
goto :EOF
)
set VIEW=%1
set w=%VIEW%
rem dotenv --file %envfile% set VIEW %1
