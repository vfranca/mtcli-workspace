@echo off
rem mtcli
rem marcações
rem take profit
if "%1" == "" (
echo %TP%
goto :EOF
)
set tp=%1
