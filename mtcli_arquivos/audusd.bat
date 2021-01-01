@echo off
set prefix=audusd
set sufix=micro
call mtx xm
call dg 4
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls
