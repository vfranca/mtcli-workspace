@echo off
rem mtcli
rem marcações
rem máx ontem
call mtcli
if "%1" == "" (
echo MAX ONT %hoy%
goto :EOF
)
set hoy=%1
