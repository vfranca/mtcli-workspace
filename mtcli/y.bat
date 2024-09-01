@echo off
rem mtcli
rem variáveis de ambiente
rem year
call mtcli
if "%1" == "" (
echo %Y%
goto :EOF
)
set y=%1
call intra on
