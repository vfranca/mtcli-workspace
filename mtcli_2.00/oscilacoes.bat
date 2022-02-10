@echo off
rem mtcli
rem gráfico de oscilações
cls
mt bars %t% --period %p% --date %id% --view var --count 108
