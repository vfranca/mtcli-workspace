@echo off
rem mtcli
rem variáveis de ambiente
rem month
call mtcli
if "%1" == "" (
echo %M%
goto :EOF
)
set m=%1
