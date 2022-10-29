@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem limite de perda do dia
if "%1" == "" (
echo %LMT%
goto :EOF
)
set LMT=%1
set LIMITE=%1
