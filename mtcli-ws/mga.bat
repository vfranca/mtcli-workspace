@echo off
rem mtcli
rem marcações
rem magnetic above
if "%1" == "" (
echo %MGA%
goto :EOF
)
set mga=%1
call sv /q
