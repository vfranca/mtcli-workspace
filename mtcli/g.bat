@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem range da barra corrente
if "%1" == "" (
set period1=%PERIOD%
) else (
set period1=%1
)
mt rm %SYMBOL% --period %period1% --count 1
