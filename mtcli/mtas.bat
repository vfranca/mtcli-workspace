@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem meta semanal do day trade
if "%1" == "" (
echo %MTAS%
goto :EOF
)
set MTAS=%1
