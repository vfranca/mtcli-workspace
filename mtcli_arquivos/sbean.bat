@echo off
rem variavais de entrada
set prefix=sbean
set sufix=-jan21
set digits=2
rem
call mtx xm
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
