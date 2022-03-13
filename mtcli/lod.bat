@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem mínima de hoje
if "%1" == "" (
echo %lod%
goto :EOF
)
set lod=%1
