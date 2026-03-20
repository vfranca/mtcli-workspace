@echo off
rem mtcli
rem tamanho da barra atual
if "%1" == "" (
set period1=%PERIOD%
) else (
set period1=%1
)
mt bars %SYMBOL% --view r --period %period1% --count 1
