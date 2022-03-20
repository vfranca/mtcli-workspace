@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem máxima da barra corrente
if "%1" == "" (
set period1=%PERIOD%
) else (
set period1=%1
)
mt bars %SYMBOL% --count 2 --view h --period %period1%
