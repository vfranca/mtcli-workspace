@echo off
rem mtcli
rem grafico de volume de negocios
rem entradas
set defaultview=vol
set defaultcount=108
rem ajuda
rem comandos
cls
mt bars %t% --period %p% --date %id% --view %defaultview% --count %defaultcount%
