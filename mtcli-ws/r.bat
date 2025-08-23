@echo off
rem mtcli
rem marcações
rem stop padrão
call mtcli
if "%1" == "" (
echo %R%
goto :EOF
)
set r=%1
set sl=%1
