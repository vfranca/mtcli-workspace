@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem dia
if "%1" == "" (
echo %I%
goto :EOF
)
rem
rem define o dia
rem
set i=%1
rem
rem redefine a data intraday
rem
set id=%Y%.%M%.%I%

rem
