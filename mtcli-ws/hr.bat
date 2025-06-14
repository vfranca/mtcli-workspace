@echo off
rem mtcli
rem marcações
rem hora
call mtcli
if "%1" == "" (
echo %HR%
goto :EOF
)
set hr=%1
