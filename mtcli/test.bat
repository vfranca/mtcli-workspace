@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem
rem ferramentas de trading
rem backtest 
rem
rem define o ativo
rem
if not defined S (set /p s=ativo:)
rem
rem define o período
rem
if not defined P (set /p p=periodo:)
rem
rem define o ano
rem
if not defined Y (set /p y=ano:)
rem
rem define o mês
rem
if not defined M (set /p m=mes:)
rem
rem define o dia
if not "%1" == "" (set i=%1)
if not defined I (set /p i=dia:)
rem
rem
rem define o sufixo do nome de arquivo
set sufix=%P%-%M%-%I%
rem
rem define quantidade de barras
set count=540
rem
rem define o diretório dos arquivos
set tempdir=%TEMP%
rem
rem gera os arquivos
rem
rem gráfico completo
rem
set filename-full=%tempdir%\full.txt
mt bars %S% --date %Y%.%M%.%I% --period %P% --count %count% > %filename-full%
rem
rem gráfico de canal
rem
set filename=%tempdir%\%sufix%.txt
mt bars %S% --date %Y%.%M%.%I% --period %P% --view ch --count %count% > %filename%
rem
rem gráfico de ranges
rem
set filename-ranges=%tempdir%\ranges.txt
mt bars %S% --date %Y%.%M%.%I% --period %P% --view r --count %count% > %filename-ranges%
rem
rem abre os arquivos no bloco de notas
rem
rem abre o gráfico de canal
rem
start %filename%
rem
rem abre o gráfico de ranges
rem
start %filename-ranges%
rem
rem abre o gráfico completo
rem
start %filename-full%
rem
