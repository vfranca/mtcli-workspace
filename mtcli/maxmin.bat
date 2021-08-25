@echo off
rem mtcli
rem grafico de máximas e mínimas
set defaultview=ch
set defaultcount=26
set count="%1"
set intraday=%id%
cls
if %count% == "" (
mt bars %t% --period %p% --date %intraday% --view %defaultview% --count %defaultcount%
) else (
mt bars %t% --period %p% --date %intraday% --view %defaultview% --count %count%
)
rem médias
sma %t% --period %p% --count 20
