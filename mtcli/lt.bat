@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem linha de tendência
if "%1" == "" (
echo %LT%
goto :EOF
)
set lt=%1
