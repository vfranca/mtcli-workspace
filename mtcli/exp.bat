@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem exporta o grafico para um arquivo TXT
rem define o nome do arquivo de exportacao
if "%1" == "" (
set arquivo_exp=%SYMBOL%-%PERIOD%-%I%-%M%-%Y%.txt
) else (
set arquivo_exp=%SYMBOL%-%1-%I%-%M%-%Y%.txt
)
rem define a pasta dos arquivos
set pasta_exp=exp\%SYMBOL%
rem cria a pasta de exportacao
if not exist %pasta_exp% (
mkdir %pasta_exp%
)
rem gera o arquivo de exportacao
if "%1" == "" (
call %PERIOD% 20 > %pasta_exp%\%arquivo_exp%
) else (
call %* > %pasta_exp%\%arquivo_exp%
)
rem abre o arquivo de exportacao
start %pasta_exp%\%arquivo_exp%
