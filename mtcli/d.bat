@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variaveis de ambiente
if "%1" == "" (
echo %DIGITS%
goto :EOF
)
set DIGITS=%1
set d=%DIGITS%
