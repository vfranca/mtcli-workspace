@echo off
rem mtcli
rem entrada 1
if "%1" neq "" (
set e1=%1
)
rem entrada 2
if "%2" neq "" (
set e2=%2
)
rem entrada 3
if "%3" neq "" (
set e3=%3
)
rem calcula o preço médio
python pm.py %*
