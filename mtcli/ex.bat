@echo off
rem mtcli
rem exporta o grafico para um arquivo TXT
rem
rem
rem define a pasta dos arquivos
set pasta_exp=GRAFICOS\EX\%SYMBOL%
rem
rem
rem define o nome do arquivo de exportacao
if "%1" == "" (
set arquivo_exp=%SYMBOL%-%PERIOD%-%Y%-%M%-%I%.txt
) else (
set arquivo_exp=%SYMBOL%-%1-%Y%-%M%-%I%.txt
)
rem
rem
rem cria a pasta de exportacao
if not exist %pasta_exp% (
mkdir %pasta_exp%
)
rem
rem
rem gera o arquivo de exportacao
if "%1" == "" (
call %PERIOD% 20 > %pasta_exp%\%arquivo_exp%
) else (
call %* > %pasta_exp%\%arquivo_exp%
)
rem abre o arquivo de exportacao
start %pasta_exp%\%arquivo_exp%
