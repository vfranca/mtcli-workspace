@echo off
rem mtcli
rem marcações
rem alavancagem
call mtcli
if "%1" == "" (
echo ALAVAN %ALA%
goto :EOF
)
set ala=%1
