@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem média móvel simples de 200 períodos
mt bars %SYMBOL% --period %PERIOD% --view c --count 1
mt mm %SYMBOL% --period %PERIOD% --count 200
