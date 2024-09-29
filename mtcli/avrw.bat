@echo off
rem mtcli
rem atalhos de comando
rem average range day
if "%1" == "" (
set count=10
goto :range
)
set count=%1
goto :range

:range
mt rm %SYMBOL% --period W1 --count %count%
