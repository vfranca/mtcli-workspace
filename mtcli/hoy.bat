@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem variáveis de ambiente
rem máxima de ontem
if "%1" == "" (
echo %hoy%
goto :EOF
)
set hoy=%1
