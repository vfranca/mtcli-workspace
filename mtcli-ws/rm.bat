@echo off
rem mtcli
rem atalhos de comando
rem average range
if "%1" == "" (
set count=10
goto :range
)
set count=%1
goto :range

:range
mt rm %SYMBOL% --period %PERIOD% --count %count%
