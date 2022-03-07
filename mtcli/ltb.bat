@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem linha de tendência de baixa
if "%1" == "" (
echo %ltb%
goto :EOF
)
set ltb=%1
