@echo off

if "%1" == "conta" (goto :CONTA)
if "%1" == "ativos" (goto :ATIVOS)

:conta
python conta.py
goto :EOF

:ativos
python ativos.py %2
goto :EOF


