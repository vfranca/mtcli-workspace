@echo off
rem ferramentas de trading
rem Copyright 2021 Valmir França
rem operacao de venda
if "%1" == "" (
set /p e=entrada:
goto :venda
) else (
set e=%1
goto :venda
)

:venda
py trade.py venda %e% --stop-default %r% --retorno %rr%
