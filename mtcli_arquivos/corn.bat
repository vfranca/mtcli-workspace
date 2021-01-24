@echo off
rem entradas
set prefix=corn
set sufix=-mar21
set digits=2
set mt5=xm
rem ajuda
rem comandos
cls
call mtx %mt5%
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
