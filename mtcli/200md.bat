@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem média móvel simples de 20 períodos do diário
mt bars %SYMBOL% --period D1 --view c --count 1
mt mm %SYMBOL% --period D1 --count 200
