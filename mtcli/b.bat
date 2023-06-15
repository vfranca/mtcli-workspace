@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem atalhos de comando
rem barra atual
if "%1" == "" (
set period1=%PERIOD%
) else (
set period1=%1
)
mt bars %SYMBOL% --period %period1% --count 1
