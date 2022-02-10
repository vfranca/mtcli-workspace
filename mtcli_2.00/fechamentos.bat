@echo off
rem mtcli
rem grafico de fechamentos
rem entradas
set defaultview=c
set defaultcount=108
set defaultma=20
set intraday=%id%
rem comandos
cls
mt bars %t% --period %p% --date %intraday% --view %defaultview% --count %defaultcount%
sma %t% --period %p% --count %defaultma%
