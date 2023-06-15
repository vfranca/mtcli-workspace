@echo off
rem programa em lotes
rem Copyright 2022 Valmir França
rem pasta mtcli
rem
rem suportes e resistencias
rem
rem r3
call r3
rem r2
call r2
rem r1
call r1
rem fechamento
echo *
mt bars --view c --count 1 --period %PERIOD% %SYMBOL%
echo *
rem s1
call s1
rem s2
call s2
rem s3
call s3
