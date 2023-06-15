@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem exibe o preço de fechamento
mt bars %SYMBOL% --period %PERIOD% --view c --count 1
rem
rem Exibe uma média de n barras
rem
if not "%1" == "" (
mt ma %SYMBOL% --period %PERIOD% --count %1
goto :EOF
)
rem
rem exibe a ema20
mt ma %SYMBOL% --period %PERIOD% --count 20
