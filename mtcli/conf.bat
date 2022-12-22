@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem
rem configurações do terminal de comando
rem
if "%1" == "term" (
title %S%
prompt $$
goto :EOF
)
rem
rem
if not "%1" == "" (call s %1)
if not "%2" == "" (call d %2)
if not "%3" == "" (call p %3)

rem
if not defined id set id=""
if not defined intraday set intraday=desligado
rem

rem
rem exibe as configurações
rem
rem symbol/ativo de trabalho
rem
echo SYMBOL = %SYMBOL%
rem
rem dígitos da moeda
rem
echo DIGITS = %DIGITS%
rem
rem período/tempo gráfico
rem
echo PERIOD = %PERIOD%
rem
rem data do modo intraday
rem
echo INTRADAY = %ID%
rem
