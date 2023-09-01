@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem limite de perda do dia
if "%1" == "" (
echo %LMT%
goto :EOF
)
set LMT=%1
set LIMITE=%1
