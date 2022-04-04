@echo off
mt bars --view c --count 1 %SYMBOL% --period %PERIOD%
call pb1
call pb2
call pb3
