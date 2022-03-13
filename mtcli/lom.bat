@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem mínima do mês
if "%1" == "" (
echo %lom%
goto :EOF
)
set lom=%1
