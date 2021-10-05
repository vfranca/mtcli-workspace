@echo off
rem ferramentas de trading
rem Copyright 2021 Valmir França
rem operacao de compra
set /p entrada=entrada:
py trade.py compra %entrada% --stop-default %r% --retorno %rr%
