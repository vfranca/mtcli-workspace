@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem atalhos de comando
rem range da barra corrente
if "%1" == "" (
set period1=%PERIOD%
) else (
set period1=%1
)
mt rm %SYMBOL% --period %period1% --count 1
