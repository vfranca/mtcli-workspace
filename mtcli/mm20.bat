@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem média móvel de 20 períodos
mt bars %symbol% --period D1 --view c --count 1
mt mm %symbol% --period %p% --count 20
