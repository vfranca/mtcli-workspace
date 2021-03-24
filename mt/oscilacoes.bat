@echo off
rem aliases para comandos do mtcli
rem gráfico de oscilações
cls
mt bars %t% --period %p% --date %d% --view var --count 108
