@echo off
rem mtcli
rem variação percentual da barra atual
if "%1" == "" (
set period1=%PERIOD%
) else (
set period1=%1
)
mt bars %SYMBOL% --view va --period %period1% --count 2
