@echo off
rem mtcli
rem máxima da barra atual
if "%1" == "" (
set per=%PERIOD%
) else (
set per=%1
)
mt bars %SYMBOL% --view h --period %per% --count 2
