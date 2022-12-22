@echo off
echo saldo %SLD%
echo meta %MTA%
echo limite %LMT%
set /a mta_restante=%MTA%-%SLD%
echo meta restante %mta_restante%
