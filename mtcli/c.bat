@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem variáveis de ambiente
rem atalhos de comando
rem ferramentas de trading
rem operacao de compra
if "%1" == "" (
goto :COMBRA
goto:EOF
) else (
set e=%1
goto :COMPRA
goto :EOF
)

:COMPRA
if "%E%" == "" (
set /p e=entrada:
)
py trade.py %e% --risco %r% --retorno %rr%
