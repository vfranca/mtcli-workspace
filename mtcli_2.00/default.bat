@echo off
rem mtcli
rem gráfico default
set defaultview=default
set defaultcount=26
set count="%1"
set intraday=%id%
cls
if %count% == "" (
mt bars %t% --period %p% --date %intraday% --count %defaultcount%
) else (
mt bars %t% --period %p% --date %intraday% --view %defaultview% --count %count%
)
sma %t% --period %p% --count 20
