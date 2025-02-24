@echo off
rem mtcli
rem marcações
rem fechamento de ontem
call mtcli
if "%1" == "" (
echo %coy%
goto :EOF
)
set coy=%1
