@echo off
rem variaveis de entrada
set prefix=aus200
set sufix=cash
set digits=0
rem ajuda
rem comandos
cls
call mtx xm
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
