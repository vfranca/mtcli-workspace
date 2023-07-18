@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem moeda de negociação
if "%1" == "" (
echo %MOEDA%
goto :EOF
)
set MOEDA=%1
