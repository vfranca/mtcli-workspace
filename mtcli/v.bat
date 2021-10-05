@echo off
rem ferramentas de trading
rem Copyright 2021 Valmir França
rem operacao de venda
set /p entrada=entrada:
py trade.py venda %entrada% --stop-default %r% --retorno %rr%
