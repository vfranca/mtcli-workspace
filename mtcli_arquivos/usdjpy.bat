@echo off
rem variaveis de entrada
set prefix=usdjpy
set sufix=micro
set digits=2
rem
call mtx xm
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
