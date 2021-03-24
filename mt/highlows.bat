@echo off
rem aliases para comandos do mtcli
rem grafico de máximas e mínimas
rem entradas
set defaultview=ch
set defaultcount=108
set defaultma=20
set view="%1"
set count="%2"
rem ajuda
rem comandos
cls
if %view% == "" (
mt bars %t% --period %p% --date %d% --view %defaultview% --count %defaultcount%
) else (
mt bars %t% --period %p% --date %d% --view %view% --count %count%
)
mt sma %t% --period %p% --count %defaultma%
