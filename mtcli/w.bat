@echo off
rem mtcli
rem Copyright 2022 Valmir França
rem variaveis de ambiente
set envfile=%SystemDrive%/.env
if "%1" == "" (
dotenv --file %envfile% get VIEW
goto :EOF
)
set VIEW=%1
set w=%VIEW%
dotenv --file %envfile% set VIEW %1
