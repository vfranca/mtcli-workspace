@echo off
rem mtcli
rem variáveis
rem alvo/stop gain
if "%1" == "" (
echo %A%
goto :EOF
)
set A=%1
rem obsoleto:
set SG=%1
