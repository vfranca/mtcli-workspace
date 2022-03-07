@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem ferramentas de trading
rem break even do operacional
set /p payoff=payoff:
py breakeven.py %payoff%
