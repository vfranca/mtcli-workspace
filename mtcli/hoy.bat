@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem máx ontem
if "%1" == "" (
echo MAX ONTEM %hoy%
goto :EOF
)
set hoy=%1
