@echo off
rem mtcli
rem marcações
rem day
call mtcli
if "%1" == "" (
echo %I%
goto :EOF
)
set i=%1
rem call intra on
