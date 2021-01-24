@echo off
rem entradas
set prefix=eurusd
set sufix=micro
set digits=4
rem ajuda
rem comandos
call mtx xm
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
