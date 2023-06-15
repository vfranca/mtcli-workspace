@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem variáveis de ambiente
rem PTAX
if "%1" == "" (
echo %PTAX%
goto :EOF
)
set ptax=%1
