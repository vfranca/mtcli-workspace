@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem
rem variáveis de ambiente
rem
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
