@echo off
rem mtcli
rem variáveis de ambiente
rem month
call mtcli
if "%1" == "" (
echo MES %M%
goto :EOF
)
set m=%1
call intra on
