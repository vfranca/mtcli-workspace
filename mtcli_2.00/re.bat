@echo off
rem ferramentas de trading
rem Copyright 2021 Valmir França
rem risco efetivo
set /p entrada=entrada:
set /p loss=loss atingido:
set /p cv=c/v:
py risco_efetivo.py %entrada% %loss% %cv%
