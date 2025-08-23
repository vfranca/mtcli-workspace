@echo off
if not "%1" == "%1" (
set preco=%1
) else (
set preco=%pc%
)
mt trade compra -s %symbol% -l %lot% -sl %sl% -tp %tp% --preco %preco% --pendente
