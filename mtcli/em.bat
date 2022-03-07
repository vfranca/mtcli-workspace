@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem ferramentas de trading
rem expectativa matemática
set /p ta=taxa de acerto:
set /p gm=ganho medio:
set /p pm=perda media:
py expectativa.py %ta% %gm% %pm%
