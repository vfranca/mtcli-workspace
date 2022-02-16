@echo off
if "%~1" == "" (
set s=%SYMBOL%
) else (
set s=%1
)
mt bars %s% -v c -c 1
mt mm %s% -p daily -c 20
mt mm %s% -p daily -c 100
