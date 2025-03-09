@echo off
rem mtcli
rem barra atual
if "%1" == "" (
set period1=%PERIOD%
) else (
set period1=%1
)
mt bars %SYMBOL% --view full --period %period1% --count 1
