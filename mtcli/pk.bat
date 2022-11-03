@echo off
rem mtcli
rem variáveis
rem pullback
if "%1" == "" (
echo %PK%
goto :EOF
)
set pk=%1
set pbk=%1
