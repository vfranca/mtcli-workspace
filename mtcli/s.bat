@echo off
rem mtcli
rem variaveis de ambiente
if "%~1" == "" (
echo SYMBOL=%t%
goto :EOF
)
set t=%1
set SYMBOL=%t%
title %t%
echo SYMBOL=%t%
