@echo off
rem ferramentas de trading
rem Copyright 2021 Valmir França
rem oscilação percentual
if "%~1" == "-h" (
echo instale kt-osc:
echo pip install kt-osc
goto :EOF
)
osc %fundo% %topo%
