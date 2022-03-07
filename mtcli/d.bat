@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variaveis de ambiente
set envfile=%SystemDrive%/.env
if "%1" == "" (
dotenv --file %envfile% get DIGITS
goto :EOF
)
set DIGITS=%1
set d=%DIGITS%
dotenv --file %envfile% set DIGITS %1
