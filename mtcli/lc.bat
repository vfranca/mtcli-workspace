@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem linha de canal
if "%1" == "" (
echo %LC%
goto :EOF
)
set lc=%1
