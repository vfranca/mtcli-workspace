@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem meta de ganho do dia
if "%1" == "" (
echo %meta%
goto :EOF
)
set meta=%1
