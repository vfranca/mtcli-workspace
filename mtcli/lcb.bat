@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem linha de canal de baixa
if "%1" == "" (
echo %lcb%
goto :EOF
)
set lcb=%1
