@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem
rem variaveis de ambiente
rem
if "%~1" == "" (
echo %SYMBOL%
goto :EOF
)
rem
set SYMBOL=%1
set s=%SYMBOL%
rem
if not "%2" == "" (call d %2)
rem
rem if not defined id set id=""
rem if not defined intraday set intraday=desligado
rem
title %SYMBOL%
rem prompt $$
