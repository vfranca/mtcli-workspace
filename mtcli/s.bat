@echo off
rem aliases para comandos do mtcli
rem exibe/define o symbol do terminal
set symbol=%1
rem ajuda
if "%1" == "-h" (
echo exibe/define o symbol
goto :EOF
)
rem comandos
rem exibe o symbol
if "%1" == "" (
echo symbol=%t%
goto :EOF
)
rem define o symbol
set t=%symbol%
title %symbol%
echo symbol=%t%
