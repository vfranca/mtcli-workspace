@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem linha de tendência de alta
if "%1" == "" (
echo %lta%
goto :EOF
)
set lta=%1
