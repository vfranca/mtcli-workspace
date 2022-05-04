@echo off
rem programa em lotes
rem Copyright 2022 Valmir França
rem pasta mtcli
call s3
call s2
call s1
mt bars --view c --count 1 --period %PERIOD% %SYMBOL%
