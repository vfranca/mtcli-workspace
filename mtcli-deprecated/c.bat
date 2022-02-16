@echo off
rem ferramentas de trading
rem Copyright 2021 Valmir França
rem operacao de compra
if "%1" == "" (
set /p e=entrada:
goto :compra
) else (
set e=%1
goto :compra
)

:compra
py trade.py compra %e% --stop-default %r% --retorno %rr%
