@echo off
rem ferramentas de trading
rem Copyright 2021 Valmir França
rem taxa de acerto
set /p acertos=acertos:
set /p erros=erros:
py acerto.py %acertos% %erros%
