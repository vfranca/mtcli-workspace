@echo off
rem entradas
set prefix=ibov
set sufix=
set digits=0
set mt5=clear
rem ajuda
rem comandos
cls
call mtx %mt5%
call dg %digits%
call s %prefix%%sufix%
