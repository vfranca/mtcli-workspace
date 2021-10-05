@echo off
rem ferramentas de trading
rem Copyright 2021 Valmir França
rem break even
set /p payoff=payoff:
py breakeven.py %payoff%
