@echo off
rem mtcli
rem marcações
rem alavancagem
call mtcli
if "%1" == "" (
echo %ALA%
goto :EOF
)
set ala=%1
