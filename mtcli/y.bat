@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem
rem variáveis de ambiente
rem
rem ano
rem
if "%1" == "" (
echo %Y%
goto :EOF
)
rem
rem define o ano
rem
set y=%1
rem
rem redefine a data intraday
rem
set id=%Y%.%M%.%I%
rem
