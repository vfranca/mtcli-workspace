@echo off
rem mtcli
rem mínima da barra atual
if "%1" == "" (
set per=%PERIOD%
) else (
set per=%1
)
mt bars %SYMBOL% --view l --period %per% --count 1
