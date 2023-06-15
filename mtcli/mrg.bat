@echo off
rem mtcli
rem variáveis de ambiente
rem margem de garantia
if "%1" == "" (
echo %MRG%
goto :EOF
)
set mrg=%1
