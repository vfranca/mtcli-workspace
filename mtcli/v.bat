@echo off
rem ferramentas de trading
rem Copyright 2021 Valmir França
rem operacao de venda
set /p e=entrada:
py trade.py venda %e% --stop-default %r% --retorno %rr%
