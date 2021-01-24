@echo off
rem entradas
set prefix=imob
set sufix=
set digits=0
rem comandos
call mtx b3
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
