@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem spread bid ask
if "%1" == "" (
echo %SPREAD%
goto :EOF
)
set spread=%1
