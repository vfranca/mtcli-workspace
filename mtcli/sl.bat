@echo off
rem mtcli
rem variáveis
rem stop loss
if "%1" == "" (
echo %SL%
goto :EOF
)
set SL=%1
