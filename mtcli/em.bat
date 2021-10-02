@echo off
rem sistema de trading
rem expectativa matemática
set /p ta=taxa de acerto:
set /p gm=ganho medio:
set /p pm=perda media:
py expectativa.py %ta% %gm% %pm%
