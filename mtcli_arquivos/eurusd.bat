@echo off
rem variaveis de entrada
set prefix=eurusd
set sufix=micro
set digits=4
rem
call mtx xm
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
