@echo off
rem ferramentas de trading
rem Copyright 2021 Valmir França
rem range operacional
set /p range=range medio:
set /p max=maxima:
set/p min=minima:
py range.py %range% %max% %min%
