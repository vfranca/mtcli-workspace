@echo off
rem aliases para comandos do mtcli
rem gráfico default
rem entradas
set defaultview=default
set defaultcount=108
set defaultma=20
set view="%1"
set count="%2"
rem ajuda
rem comandos
cls
if %view% == "" (
mt bars %t% --period %p% --date %d% --count %defaultcount%
) else (
mt bars %t% --period %p% --date %d% --view %view% --count %count%
)
sma %t% --period %p% --count %defaultma%
