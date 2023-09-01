@echo off
rem pasta mtcli
rem Copyright 2023 Valmir França da Silva
rem https://github.com/vfranca/
rem média móvel simples de 20 períodos do diário
rem preço de fechamento
mt bars %SYMBOL% --period D1 --view c --count 1
rem média móvel de 20
mt mm %SYMBOL% --period D1 --count 20
