@echo off
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca
rem
rem média móvel simples de 100 períodos do diário
rem
rem preço de fechamento
rem
mt bars %SYMBOL% --period D1 --view c --count 1
rem
rem média móvel de 20
rem
mt mm %SYMBOL% --period D1 --count 100
rem
