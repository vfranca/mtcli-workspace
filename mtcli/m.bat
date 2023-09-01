@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem mês
rem
if "%1" == "" (
echo %M%
goto :EOF
)
rem
rem define o mês
rem
set m=%1
rem
rem define a data intraday
rem
set id=%Y%.%M%.%I%
rem
