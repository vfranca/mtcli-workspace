@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem atalhos de comando
rem ferramentas de trading
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
