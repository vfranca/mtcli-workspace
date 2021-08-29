@echo off
rem mtcli
rem variaveis de ambiente
if "%1" == "" (
echo symbol=%t%
goto :EOF
)
set t=%1
set symbol=%1
title %t%
echo symbol=%t%
