@echo off
rem mtcli
set /p t=ativo:
set /p p=periodo:
set /p ano=ano:
set /p mes=mes:
set /p dia=dia:
set /p r=risco:
set /p rr=risco/retorno:
set id=%ano%.%mes%.%dia%
echo ativo %t%
echo intraday %ano%.%mes%.%dia%
