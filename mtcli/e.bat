@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem calcula o retorno/risco da operação
rem
rem sem entrada
rem
if "%~1" == "" (
gr t %E% -sl %SL% -tp %A%
goto :EOF
) 
rem
rem com entrada
rem
set e=%1
gr t %1 -sl %SL% -tp %A%
