@echo off
rem variaveis de entrada
set prefix=us500
set sufix=cash
set digits=0
rem comandos
call mtx xm
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
