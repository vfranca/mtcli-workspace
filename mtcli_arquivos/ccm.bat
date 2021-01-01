@echo off
set prefix=ccm
set sufix=$n
set digits=2

call mtx b3
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
