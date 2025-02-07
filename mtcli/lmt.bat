@echo off
rem mtcli
rem marcações
rem limite do dia
call mtcli
if "%1" == "" (
echo LIMITE %LMT%
goto :EOF
)
set LMT=%1
