@echo off
rem mtcli
rem variáveis de ambiente
rem alavancagem
call mtcli
if "%1" == "" (
echo %ALA%
goto :EOF
)
set ala=%1
