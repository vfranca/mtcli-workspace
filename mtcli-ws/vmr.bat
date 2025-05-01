@echo off
rem mtcli
rem atalhos de comando
rem volume médio  real
if "%1" == "" (
set count=10
) else (
set count=%1
)

mt vm %SYMBOL% --period %PERIOD% --type real --count %count%
