@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem
rem ferramentas de trading
rem backtest 
rem
rem abre um grafico minimo de um periodo
rem
set periodos=(mn1,w1,d1,h4,h3,h2,h1,m30,m20,m15,m12,m10,m6,m5,m4,m3,m2,m1)
for %%i in %periodos% do (
if "%1" == "%%i" (
call dt 0
call %%i %2 > %%i.txt
start %%i.txt
goto :EOF
)
)
rem
rem
rem define o ativo
rem
:symbol
if not defined S (set /p s=ativo:)
rem

rem
rem define o período
rem
:period
if not defined P (set /p p=periodo:)
rem

rem
rem define o ano
rem
:ano
if not "%P%" == "MN1" (
if not "%P%" == "W1" (
if not "%P%" == "D1" (
if not defined Y (set /p y=ano:)
)
)
)
rem

rem
rem define o mês
rem
:mes
if not "%P%" == "MN1" (
if not "%P%" == "W1" (
if not "%P%" == "D1" (
if not defined M (set /p m=mes:)
)
)
)
rem

rem
rem define o dia
rem
:dia
if not "%P%" == "MN1" (
if not "%P%" == "W1" (
if not "%P%" == "D1" (
if not defined I (set /p i=dia:)
)
)
)
rem

rem
rem define o sufixo do nome de arquivo
rem
:sufixo
set sufix=%P%
rem


rem
rem define quantidade de barras
:barras
if not "%~1" == "" (
set count=%1
) else (
set count=540
)
rem

rem
rem define o diretório dos arquivos
:diretorio
set tempdir=%TEMP%
rem

rem 
rem define o nome dos arquivos
rem
:nomeiatxt
set filename=%tempdir%\%sufix%.txt
set filename-full=%tempdir%\full.txt
set filename-ranges=%tempdir%\ranges.txt
rem

rem
rem gera os arquivos
rem
:geratxt
if "%P%" == "MN1" goto :SWINGTRADE
if "%P%" == "W1" goto :SWINGTRADE
if "%P%" == "D1" goto :SWINGTRADE
goto :DAYTRADE
rem

rem
rem day trade
rem
:daytrade
rem gráfico completo
mt bars %S% --date %Y%.%M%.%I% --period %P% --count %count% > %filename-full%
rem gráfico de canal
mt bars %S% --date %Y%.%M%.%I% --period %P% --view ch --count %count% > %filename%
rem gráfico de ranges
mt bars %S% --date %Y%.%M%.%I% --period %P% --view r --count %count% > %filename-ranges%
goto :ABRETXT
rem

rem
rem swing trade
rem
:swingtrade
rem gráfico completo
mt bars %S% --period %P% --count %count% > %filename-full%
rem gráfico de canal
mt bars %S% --period %P% --view ch --count %count% > %filename%
rem gráfico de ranges
mt bars %S% --period %P% --view r --count %count% > %filename-ranges%
goto :ABRETXT
rem

rem
rem abre os arquivos no bloco de notas
rem
:ABRETXT
rem abre o gráfico de canal
start %filename%
rem abre o gráfico de ranges
start %filename-ranges%
rem abre o gráfico completo
start %filename-full%
goto :EOF
rem
