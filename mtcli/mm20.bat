@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem média móvel de 20 períodos
mt bars %SYMBOL% --period D1 --view c --count 1
mt mm %SYMBOL% --period %PERIOD% --count 20
