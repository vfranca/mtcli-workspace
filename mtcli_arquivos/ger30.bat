@echo off
rem variaveis de entrada
set prefix=ger30
set sufix=cash
set digits=0
set mt5=xm2
rem ajuda
rem comandos
cls
call mtx %mt5%
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
