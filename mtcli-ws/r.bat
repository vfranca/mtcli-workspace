@echo off
rem mtcli
rem marcações
rem risco
call mtcli
if "%1" == "" (
echo R %R%
goto :EOF
)
set r=%1
