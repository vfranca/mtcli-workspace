@echo off
rem mtcli
rem marcações
rem sell zone
if "%1" == "" (
echo %SZ%
goto :EOF
)
set SZ=%1
call sv /q
