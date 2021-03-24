@echo off
rem aliases para comandos do mtcli
rem gráfico de ranges
cls
mt bars %t% --period %p% --date %d% --view r --count 108
mt atr %t% --period %p%
