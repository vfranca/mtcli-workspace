@echo off
rem mtcli
rem variaveis de ambiente
if "%~1" == "" (
echo symbol=%t%
goto :EOF
)
set t=%1
set symbol=%t%
title %t%
echo symbol=%t%
