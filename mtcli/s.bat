@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variaveis de ambiente
set envfile=%SystemDrive%/.env
if "%~1" == "" (
dotenv --file %envfile% get SYMBOL
goto :EOF
)
set SYMBOL=%1
set s=%SYMBOL%
dotenv --file %envfile% set SYMBOL %1
if "%2" neq "" call d %2

if not defined id set id=""
if not defined intraday set intraday=desligado
title %SYMBOL%
prompt $$
