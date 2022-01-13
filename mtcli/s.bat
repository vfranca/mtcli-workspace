@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variaveis de ambiente
set envfile=%SystemDrive%/.env
if "%~1" == "" (
echo %t%
dotenv --file %envfile% get DIGITS
goto :EOF
)
set t=%1
set SYMBOL=%t%
if not defined id set id=""
if not defined intraday set intraday=desligado
title %t%
prompt $$
echo SYMBOL=%t%
