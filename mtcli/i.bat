@echo off
rem mtcli
rem marcações
rem day
call mtcli
if "%1" == "" (
echo D %I%
goto :EOF
)
set i=%1
call intra on
