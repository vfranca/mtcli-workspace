@echo off
if not "%1" == "" (
set preco=%1
) else (
set preco=%pv%
)
mt trade sell --symbol %symbol% --lot %lot% -sl %sl% -tp %tp% --preco %preco% --limit
