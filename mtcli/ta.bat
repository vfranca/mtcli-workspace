@echo off
rem sistema de trading
rem taxa de acerto
set /p acertos=acertos:
set /p erros=erros:
py acerto.py %acertos% %erros%
