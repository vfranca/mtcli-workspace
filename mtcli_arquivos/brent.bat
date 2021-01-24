@echo off
rem entradas
set prefix=brent
set sufix=-mar21
set digits=2
rem ajuda
rem comandos
call mtx xm
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
