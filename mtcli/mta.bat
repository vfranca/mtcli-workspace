@echo off
rem mtcli
rem marcações
rem meta do dia
call mtcli
if "%1" == "" (
echo META %MTA%
goto :EOF
)
set MTA=%1
