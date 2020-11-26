@echo off
rem Altera o MT5 do terminal
rem variaveis de entrada
set envdir=C:\
rem ajuda
if "%1" == "" (
echo altera o MetaTrader do terminal
echo Digite uma das seguintes opcoes:
echo b3 - Para MetaTrader da Clear
echo icm - Para MetaTrader da Ic Markets
echo xm - Para MetaTrader da XM
echo at - Para MetaTrader da ActivTrades
goto :EOF
)
rem comandos
rem Seleciona MT5 da Clear
if "%1" == "b3" (
copy %envdir%.env-b3 %envdir%.env
goto :EOF
)
rem Seleciona MT5 da IC Markets
if "%1" == "icm" (
copy %envdir%.env-icm %envdir%.env
goto :EOF
)
rem Seleciona MT5 da XM
if "%1" == "xm" (
copy %envdir%.env-xm %envdir%.env
goto :EOF
)
rem Seleciona MT5 da ActivTrades
if "%1" == "at" (
copy %envdir%.env-activ %envdir%.env
goto :EOF
)
