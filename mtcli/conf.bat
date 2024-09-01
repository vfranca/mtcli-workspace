@echo off
rem mtcli
rem definição do ativo, dígitos da moeda e data do pregão
call mtcli
call term
if not "%1" == "" (
call s %1
)
if not "%2" == "" (
call d %2
)
if not "%3" == "" (
call p %3
)
if not "%4" == "" (
call i %4
call m %5
call y %6
)
rem exibe as configurações
rem symbol/ativo de trabalho
echo %SYMBOL%
rem dígitos da moeda
echo %DIGITOS%
rem período/tempo gráfico
echo %PERIOD%
rem data do modo intraday
echo %INTRADAY%
