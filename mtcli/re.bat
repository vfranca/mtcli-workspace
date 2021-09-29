@echo off
rem kit do trader
rem risco efetivo
set /p entrada=entrada:
set /p loss=loss atingido:
set /p cv=c/v:
py risco_efetivo.py %entrada% %loss% %cv%
