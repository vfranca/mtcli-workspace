@echo off
rem mtcli
rem marcações
rem moeda de negociação
call mtcli
if "%1" == "" (
echo %MOEDA%
goto :EOF
)
set MOEDA=%1
