@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem configurações do terminal de comando
rem
if "%1" == "term" (
title %S%
prompt $$
goto :EOF
)
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
rem symbol/ativo de trabalho
echo %SYMBOL%
rem dígitos da moeda
echo %DIGITOS%
rem período/tempo gráfico
echo %PERIOD%
rem data do modo intraday
echo %ID%
