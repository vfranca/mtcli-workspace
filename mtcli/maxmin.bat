@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
call p %PERIOD%
cls
if "%1" == "" (
set count=28
call :grafico
) else (
set count=%1
call :grafico
)

:media
mt mm %SYMBOL% --period %PERIOD% --count 20
goto :EOF

:grafico
mt bars %SYMBOL% --period %PERIOD% --date %ID% --view ch --count %count%
