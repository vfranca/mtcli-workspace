@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem range médio do dia
if "%1" == "" (
echo %RDIA%
goto :EOF
)
set RDIA=%1
