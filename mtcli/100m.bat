@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem média móvel simples de 100 períodos
mt bars %SYMBOL% --period %PERIOD% --view c --count 1
mt mm %SYMBOL% --period %PERIOD% --count 100
