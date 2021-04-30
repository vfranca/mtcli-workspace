@echo off
rem Aliases para comandos do mtcli
rem médias móveis de 20 e 200 períodos
set symbol=%T%
set mm_curta=20
set mm_longa=200
mt bars %symbol% -p daily -v c -c 1
sma %symbol% -p daily -c %mm_curta%
sma %symbol% -p daily -c %mm_longa%
