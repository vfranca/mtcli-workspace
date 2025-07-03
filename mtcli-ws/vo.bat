@echo off
rem mtcli
rem atalhos de comando
rem volume tick médio  
if "%1" == "" (
set count=5
) else (
set count=%1
)

mt vm %SYMBOL% --period %PERIOD% --type %VOLUME% --count %count%
