@echo off
rem aliases para comandos do mtcli
rem gráfico default
set defaultview=default
set defaultcount=26
set count="%1"
cls
if %count% == "" (
mt bars %t% --period %p% --date %d% --count %defaultcount%
) else (
mt bars %t% --period %p% --date %d% --view %defaultview% --count %count%
)
sma %t% --period %p% --count 20
