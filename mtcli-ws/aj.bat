@echo off
rem mtcli
rem marcações
rem ajuste
call mtcli
if "%1" == "" (
echo %AJ%
goto :EOF
)
set aj=%1
