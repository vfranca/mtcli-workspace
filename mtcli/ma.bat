@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem exibe o preço de fechamento
mt bars %SYMBOL% --period %PERIOD% --view c --count 1
rem
rem Exibe uma ma de n barras
rem
if not "%1" == "" (
mt ma %SYMBOL% --period %PERIOD% --count %1
goto :EOF
)
rem
rem exibe a ema20
mt ma %SYMBOL% --period %PERIOD% --count 20
rem
rem Exibe a ema200 para m5
if "%PERIOD%" == "M5" (
goto :EMA200
goto :EOF
)
rem Exibe a ema200 para d1
if "%PERIOD%" == "D1" (
goto :EMA200
goto :EOF
)
goto :EOF

:ema200
rem exibe a ema200
mt ma %SYMBOL% --period %PERIOD% --count 200
