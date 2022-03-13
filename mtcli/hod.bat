@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem máxima de hoje
if "%1" == "" (
echo %hod%
goto :EOF
)
set hod=%1
