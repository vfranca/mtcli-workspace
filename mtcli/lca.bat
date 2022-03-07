@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem linha de canal de alta
if "%1" == "" (
echo %lca%
goto :EOF
)
set lca=%1
