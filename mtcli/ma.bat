@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem media movel
rem Exibe uma média de n barras
if not "%1" == "" (
mt ma %SYMBOL% --period %PERIOD% --count %1
goto :EOF
)
rem exibe a ema20
mt ma %SYMBOL% --period %PERIOD% --count 20
