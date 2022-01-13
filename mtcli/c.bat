@echo off
rem ferramentas de trading
rem Copyright 2021 Valmir França
rem operacao de compra
set /p e=entrada:
py trade.py compra %e% --stop-default %r% --retorno %rr%
