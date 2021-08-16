@echo off
rem aliases para comandos do mtcli
rem gráfico de ranges
set view=r
set defaultcount=26
set count="%1"
cls
if %count% == "" (
mt bars %t% --period %p% --date %d% --view %view% --count %defaultcount%
) else (
mt bars %t% --period %p% --date %d% --view %view% --count %count%
)
atr %t% --period %p%
