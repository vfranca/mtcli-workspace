@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem resistência 3
if "%~1" == "" (
echo %r3%
goto :EOF
)
set r3=%1
