@echo off
set prefix=brent
set sufix=-feb21
set digits=2
call mtx xm
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
