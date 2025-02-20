@echo off
rem mtcli
rem variaveis de ambiente
rem view
call mtcli
if "%1" == "" (
echo VIEW %VIEW%
goto :EOF
)
set VIEW=%1
