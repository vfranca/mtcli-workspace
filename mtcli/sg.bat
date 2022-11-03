@echo off
rem mtcli
rem variáveis
rem stop gain
if "%1" == "" (
echo %SG%
goto :EOF
)
set SG=%1
set A=%1
