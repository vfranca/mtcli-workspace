@echo off
rem sistema de trading
rem operacao de venda
set /p entrada=entrada:
py trade.py venda %entrada% --stop-default %r% --retorno %rr%
