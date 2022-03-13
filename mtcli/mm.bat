@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem média móvel  de 20 períodos
if "%1" == "" (
set count=20
goto :media
)
set count=%1
goto :media

:media
mt mm %SYMBOL% --period %PERIOD% --count %count%
