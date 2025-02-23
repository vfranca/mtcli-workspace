@echo off
rem mtcli
rem marcações
rem meta do dia
call mtcli
if "%1" == "" (
echo %MTA%
goto :EOF
)
set MTA=%1
