@echo off
rem mtcli
rem marcações
rem valor patrimonial por cota
rem
if "%1" == "" (
echo %VPC%
goto :EOF
)
set vpc=%1
