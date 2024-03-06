@echo off
rem mtcli
rem Copyright 2022 Valmir França
rem variaveis de ambiente
if "%1" == "" (
echo %VIEW%
goto :EOF
)
set VIEW=%1
set w=%VIEW%
