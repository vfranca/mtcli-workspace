@echo off
rem mtcli
rem marcações
rem period
call mtcli
if "%1" == "" (
echo PERI %PERIOD%
goto :EOF
)
set PERIOD=%1
call term
