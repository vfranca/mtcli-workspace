@echo off
rem mtcli
rem volume da barra atual
if "%1" == "" (
set period1=%PERIOD%
) else (
set period1=%1
)
mt bars %SYMBOL% --view v --volume %VOLUME% --period %period1% --count 1
