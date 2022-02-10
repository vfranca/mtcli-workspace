@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem resistência 2
if "%~1" == "" (
echo %r2%
goto :EOF
)
set r2=%1
