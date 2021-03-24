@echo off
rem workspace do mtcli
rem Altera o MT5 do terminal
rem variaveis de entrada
set envdir=C:\
set mt5="%1"
rem ajuda
if "%1" == "" (
echo altera o MetaTrader do terminal
echo Digite uma das seguintes opcoes:
echo b3 ou clear - Para MetaTrader da Clear
echo clear2 - Para MetaTrader da Clear demo
echo icm - Para MetaTrader da Ic Markets
echo xm - Para MetaTrader da XM
echo xm2 - Para MetaTrader da XM demo
echo at - Para MetaTrader da ActivTrades
goto :EOF
)
rem comandos
rem Seleciona MT5 da Clear
if %mt5% == "b3" (
copy %envdir%.env-clear %envdir%.env
goto :EOF
)
if %mt5% == "clear" (
copy %envdir%.env-clear %envdir%.env
goto :EOF
)
rem Seleciona MT5 da Clear demo
if %mt5% == "clear2" (
copy %envdir%.env-clear-demo %envdir%.env
goto :EOF
)
rem Seleciona MT5 da IC Markets
if %mt5% == "icm" (
copy %envdir%.env-icm %envdir%.env
goto :EOF
)
rem Seleciona MT5 da XM
if %mt5% == "xm" (
copy %envdir%.env-xm %envdir%.env
goto :EOF
)
rem Seleciona MT5 da XM demo
if %mt5% == "xm2" (
copy %envdir%.env-xm-demo %envdir%.env
goto :EOF
)
rem Seleciona MT5 da ActivTrades
if %mt5% == "at" (
copy %envdir%.env-activ %envdir%.env
goto :EOF
)
