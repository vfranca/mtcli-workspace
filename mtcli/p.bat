@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem período
if "%1" == "" (
echo %PERIOD%
goto :EOF
)
set PERIOD=%1
set p=%1
rem altera o título da janela
title %SYMBOL%-%PERIOD%
