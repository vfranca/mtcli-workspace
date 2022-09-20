@echo off
set horario=9h00-12h00

echo ativo
echo %SYMBOL%
pause

echo lote
echo %LOTES% contratos
pause

echo setups
echo tc fbo
pause
echo tc bo
pause
echo bc flag
pause
echo tr ff
pause
echo tr mtr
pause

echo horario
echo %horario%
pause

echo timeframe
echo %PERIOD%
pause

echo risco por operacao
echo %R% pts
pause

echo alvo minimo por operacao
echo 25 pts para swing
pause
echo 8 pts para scalp
pause

echo risco/retorno minimo alvo
echo %RR%
pause

echo taxa de acerto alvo
echo 33%
pause

echo taxa de ocorrencia
echo 2 tc fbo
pause
echo 1 bc flag
pause
echo 1 tr ff/tr mtr
pause
