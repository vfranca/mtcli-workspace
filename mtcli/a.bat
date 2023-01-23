@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem variáveis
rem alvo/stop gain
if "%1" == "" (
echo %A%
goto :EOF
)
set A=%1
rem obsoleto:
set SG=%1
