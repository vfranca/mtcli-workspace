@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variaveis de ambiente
set envfile=%SystemDrive%/.env
if "%1" == "" (
rem dotenv --file %envfile% get PERIOD
echo %PERIOD%
goto :EOF
)
set PERIOD=%1
set p=%PERIOD%
rem dotenv --file %envfile% set PERIOD %1
