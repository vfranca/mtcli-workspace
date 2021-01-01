@echo off
set prefix=gbpusd
set sufix=micro
set digits=4

call mtx xm
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
