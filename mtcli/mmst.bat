@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
if "%~1" == "" (
set symbol1=%SYMBOL%
) else (
set symbol1=%1
)

mt bars %symbol1% --period D1 --view c --count 1

set count=20
call :media
set count=100
call :media
goto :EOF

:media
mt mm %symbol1% --period D1 --count %count%
