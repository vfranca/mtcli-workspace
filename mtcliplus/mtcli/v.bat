@echo off
rem ferramentas de trading
rem Copyright 2021 Valmir França
rem operacao de venda
if "%1" == "" (
goto :VENDA
goto :EOF
) else (
set e=%1
goto :VENDA
goto :EOF
)

:VENDA
if "%E%" == "" (
set /p e=entrada:
)
gr t %E% --risco -%R% --retorno %RR%
