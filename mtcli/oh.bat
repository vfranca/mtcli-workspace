@echo off
rem entradas
set view=ohlc
set count=100
rem ajuda
rem comandos
cls
mt bars %symbol% --view %view% --count %count% --period D1
