@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem volume de negócios da barra corrente
if "%1" == "" (
set period1=%PERIOD%
) else (
set period1=%1
)
mt bars %SYMBOL% --count 1 --view vol --period %period1%
