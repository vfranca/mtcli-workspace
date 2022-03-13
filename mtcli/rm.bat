@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem range médio  de 20 barras
if "%1" == "" (
set count=20
goto :range
)
set count=%1
goto :range

:range
mt rm %SYMBOL% --period %PERIOD% --count %count%
