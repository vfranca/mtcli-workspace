@echo off
rem Aliases para comandos do mtcli
rem média móvel de 20 períodos
set symbol=%T%
set mm_longa=20
mt bars %symbol% -p daily -v c -c 1
sma %symbol% -p daily -c %mm_longa%
