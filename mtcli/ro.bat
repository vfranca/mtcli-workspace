@echo off
rem trading
rem range operacional
set /p range=range medio:
set /p max=maxima:
set/p min=minima:
cls
py range.py %range% %max% %min%
