@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem médias móveis de 20 e 200 períodos
mt bars %symbol% --period d1 --view c --count 1
mt mm %symbol% --period d1 --count 20
mt mm %symbol% --period d1 --count 200
