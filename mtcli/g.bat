@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem range da barra corrente
if "%1" == "" (
set period1=%PERIOD%
) else (
set period1=%1
)
rem mt rm %SYMBOL% --period %period1% --count 1
mt bars %SYMBOL% --view r --period %period1% --count 1
