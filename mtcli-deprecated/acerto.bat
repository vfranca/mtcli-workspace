@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem taxa de acerto
if "%1" == "" (
echo %acerto%
goto :EOF
)
set acerto=%1
