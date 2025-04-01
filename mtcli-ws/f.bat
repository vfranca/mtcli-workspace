@echo off
rem mtcli
rem fechamento da barra atual
mt bars %SYMBOL% --view c --count 1 --period %PERIOD%
