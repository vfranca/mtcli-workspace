@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem meta mensal do day trade
if "%1" == "" (
echo %MTAM%
goto :EOF
)
set MTAM=%1
