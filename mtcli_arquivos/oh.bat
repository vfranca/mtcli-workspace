@echo off
rem entradas
set view=ohlc
set count=100
rem ajuda
rem comandos
cls
mt bars %t% --view %view% --count %count%
