@echo off
if "%~1" == "" (
set s=%SYMBOL%
) else (
set s=%1
)
mt bars %s% --period D1 --view c --count 1
mt mm %s% --period D1 --count 20
mt mm %s% --period D1 --count 100
