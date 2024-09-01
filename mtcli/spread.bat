@echo off
rem mtcli
rem variáveis de ambiente
rem spread 
call mtcli
if "%1" == "" (
echo %SPREAD%
goto :EOF
)
set spread=%1
