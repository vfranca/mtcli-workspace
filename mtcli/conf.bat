@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem
rem variaveis de ambiente
rem
set envpath=C:/.env
rem
if "%~1" == "" (
rem
echo SYMBOL = %SYMBOL%
rem
echo DIGITS = %DIGITS%
rem
echo PERIOD = %PERIOD%
rem
echo INTRADAY = %ID%
rem
dotenv --file %envpath% list 
rem
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
