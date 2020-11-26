@echo off
rem variaveis de entrada
set prefix=coffe
set sufix=-mar21
set digits=2
rem
call mtx xm
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
