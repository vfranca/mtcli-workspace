@echo off
rem mtcli
rem marcações
rem Trend line
call mtcli
if "%1" == "" (
echo %TL%
goto :EOF
)
set tl=%1
