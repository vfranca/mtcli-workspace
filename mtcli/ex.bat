@echo off
rem mtcli
rem exporta o grafico para um arquivo TXT
call mtcli
rem cria diretório de exportacao
if not exist %DIR_EXP% (
mkdir %DIR_EXP%
)
rem gera o arquivo de exportacao
if "%1" == "" (
call %PERIOD% 20 > %DIR_EXP%\%FILE_EXP%.txt
) else (
call %* > %DIR_EXP%\%FILE_EXP%.txt
)
rem abre o arquivo de exportacao
start %DIR_EXP%\%FILE_EXP%.txt
