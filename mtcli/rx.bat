@echo off
rem programa em lotes
rem Copyright 2022 Valmir França
rem pasta mtcli
call r3
call r2
call r1
mt bars --view c --count 1 --period %PERIOD% %SYMBOL%
