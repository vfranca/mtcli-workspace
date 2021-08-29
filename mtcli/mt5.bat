@echo off
rem mtcli
rem Altera o MT5 do mtcli
set envdir=C:\
rem set mt5="%1"
set /p mt5=corretora:
copy %envdir%.env-%mt5% %envdir%.env
