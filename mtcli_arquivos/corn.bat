@echo off
rem varivais de entrada
set prefix=corn
set sufix=-mar21
set digits=2
rem
call mtx xm
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
