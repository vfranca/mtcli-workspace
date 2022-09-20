@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem média móvel
mt bars %SYMBOL% --period %PERIOD% --view c --count 1
if "%1" == "" (
set count=20
goto :media
)
set count=%1
goto :media

:media
if "%1" == "" (
rem mt mm %SYMBOL% --period %PERIOD% --count 5
)
mt mm %SYMBOL% --period %PERIOD% --count %count%
