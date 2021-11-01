@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variaveis de ambiente
if "%~1" == "" (
echo %t%
goto :EOF
)
set t=%1
set SYMBOL=%t%
rem set id=%ano%.%mes%.%dia%
title %t%
prompt $$
echo SYMBOL=%t%
