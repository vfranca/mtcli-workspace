@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem variáveis de ambiente
rem taxa de acerto
if "%1" == "" (
echo %acerto%
goto :EOF
)
set acerto=%1
