@echo off
rem programa em lotes
rem Copyright 2022 Valmir França
rem pasta mtcli
mt bars --view c --count 1 --period %PERIOD% %SYMBOL%
call s1
call s2
call s3

