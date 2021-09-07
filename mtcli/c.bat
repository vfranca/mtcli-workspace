@echo off
rem sistema de trading
rem operacao de compra
set /p entrada=entrada:
py trade.py compra %entrada% --stop-default %r% --retorno %rr%
