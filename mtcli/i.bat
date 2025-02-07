@echo off
rem mtcli
rem variáveis de ambiente
rem day
call mtcli
if "%1" == "" (
echo DIA %I%
goto :EOF
)
set i=%1
call intra on
