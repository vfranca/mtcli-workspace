@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem movimento projetado
rem
rem exibe o valor da variável
rem
if "%1" == "" (
echo %MP%
goto :EOF
)
rem
rem define novo valor
rem
set MP=%1
