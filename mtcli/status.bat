@echo off
echo saldo %SLD%
rem echo meta %MTA%
rem echo limite %LMT%
set /a mta_restante=%MTA%-%SLD%
echo meta restante %mta_restante%
set /a lmt_restante=%LMT%-%SLD%
echo distancia do limite %lmt_restante%
echo margem %MRG%


