@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem suporte 3
if "%~1" == "" (
echo %s3%
goto :EOF
)
set s3=%1