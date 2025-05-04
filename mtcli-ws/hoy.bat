@echo off
rem mtcli
rem marcações
rem máx ontem
call mtcli
if "%1" == "" (
echo %hoy%
goto :EOF
)
set hoy=%1
call sv /q
