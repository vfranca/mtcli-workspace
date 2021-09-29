@echo off
rem sistema de trading
rem break even
set /p payoff=payoff:
py breakeven.py %payoff%
