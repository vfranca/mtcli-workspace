@echo off
rem mtcli workspace
rem Executa procedimentos pos-instalacao
rem entradas
set denv=C:
set fenv=.env
set symbol=petr4
set period=daily
set date=""
rem ajuda
rem comandos
cls
echo iniciando configuracao do terminal para o mtcli
echo copiando arquivo de configuracao %fenv%...
copy %fenv% %denv%\%fenv%
echo o arquivo %fenv% foi copiado com sucesso para %denv%\%fenv%
pause
echo Definindo variaveis de ambiente...
set t=%symbol%
echo symbol = %symbol%
set p=%period%
echo period = %period%
set d=%date%
echo date = %date%
pause
echo Personalizando o terminal...
prompt $$
title mtcli
echo o terminal de comandos do windows foi configurado com sucesso!
pause
echo Para instalar o robo que exporta as cotacoes abra o MetaTrader 5 e execute executa-robo
echo Edite o arquivo %direnv%\%fileenv% para o caminho da pasta do MetaTrader 5 executando mt5-configura
echo Apos a edicao desse arquivo e a instalacao do rrobo o mtcli estara pronto para uso
