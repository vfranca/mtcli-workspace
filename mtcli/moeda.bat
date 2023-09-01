@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem moeda de negociação
if "%1" == "" (
echo %MOEDA%
goto :EOF
)
set MOEDA=%1
