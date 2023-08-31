@echo off
rem exporta um grafico para um arquivo TXT
rem define o nome do arquivo de exportacao
set arquivo_exp=%SYMBOL%-%PERIOD%-%I%-%M%-%Y%.txt
rem define o nome da pasta de exportacao
set pasta_exp=%HOMEPATH%\mtcli\exp
rem cria a pasta de exportacao
if not exist %pasta_exp% (
mkdir %pasta_exp%
)
rem gera o arquivo de exportacao
call %* > %pasta_exp%\%arquivo_exp%
rem abre o arquivo de exportacao
start %pasta_exp%\%arquivo_exp%
