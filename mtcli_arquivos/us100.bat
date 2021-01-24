@echo off
set prefix=us100
set sufix=cash
set digits=0

call mtx xm
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
