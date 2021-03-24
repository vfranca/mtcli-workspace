@echo off
rem Aliases para comandos do mtcli
rem média móvel simples de 9 períodos
rem entradas
set symbol=%T%
set mm_curta=9
set mm_longa=20
rem ajuda
rem comandos
mt bars %symbol% -p daily -v c -c 1
mt sma %symbol% -p daily -c %mm_curta%
mt sma %symbol% -p daily -c %mm_longa%
