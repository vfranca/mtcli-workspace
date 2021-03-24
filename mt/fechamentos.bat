@echo off
rem aliases para comandos do mtcli
rem grafico de fechamentos
rem entradas
set defaultview=c
set defaultcount=108
set defaultma=20
rem ajuda
rem comandos
cls
mt bars %t% --period %p% --date %d% --view %defaultview% --count %defaultcount%
mt sma %t% --period %p% --count %defaultma%
