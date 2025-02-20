@echo off
rem mtcli
rem marcações
rem stop loss
if "%1" == "" (
echo %SL%
goto :EOF
)
set SL=%1
