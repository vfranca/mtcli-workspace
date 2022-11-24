@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem
rem atalhos de comando
rem
rem média móvel simples de 20 períodos do diário
rem
rem preço de fechamento
rem
mt bars %SYMBOL% --period D1 --view c --count 1
rem
rem média móvel de 20
rem
mt mm %SYMBOL% --period D1 --count 20
rem
