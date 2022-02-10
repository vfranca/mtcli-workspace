@echo off
rem mtcli
rem gráfico de ranges
set view=r
set defaultcount=26
set count="%1"
set intraday=%id%
cls
if %count% == "" (
mt bars %t% --period %p% --date %intraday% --view %view% --count %defaultcount%
) else (
mt bars %t% --period %p% --date %intraday% --view %view% --count %count%
)
atr %t% --period %p%
