@echo off
call r3
call r2
call r1
mt bars --view c --count 1 %symbol%
