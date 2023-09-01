@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem margem de garantia
if "%1" == "" (
echo %MRG%
goto :EOF
)
set mrg=%1
