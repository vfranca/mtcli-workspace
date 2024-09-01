@echo off
rem mtcli
rem variáveis de ambiente
rem limite do dia
call mtcli
if "%1" == "" (
echo %LMT%
goto :EOF
)
set LMT=%1
