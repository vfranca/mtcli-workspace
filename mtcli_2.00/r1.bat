@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem resistência 1
if "%~1" == "" (
echo %r1%
goto :EOF
)
set r1=%1
