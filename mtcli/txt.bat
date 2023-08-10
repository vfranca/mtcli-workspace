@echo off
rem pasta mtcli
rem Copyright 2021 Valmir França
rem
set minimo=1
set ranges=1
set volumes=0
set completo=1
set count=678
set count_swing=20
rem
rem abre um grafico minimo do periodo atual
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
rem define o ativo
rem
:symbol
if not defined S (set /p s=ativo:)
rem
rem define o período
:period
if not defined P (set /p p=periodo:)
rem
rem define o ano
:ano
if not "%P%" == "MN1" (
if not "%P%" == "W1" (
if not "%P%" == "D1" (
if not defined Y (set /p y=ano:)
)
)
)
rem
rem define o mês
:mes
if not "%P%" == "MN1" (
if not "%P%" == "W1" (
if not "%P%" == "D1" (
if not defined M (set /p m=mes:)
)))
rem
rem define o dia
:dia
if not "%P%" == "MN1" (
if not "%P%" == "W1" (
if not "%P%" == "D1" (
if not defined I (set /p i=dia:)
)))
rem
rem define o sufixo do nome de arquivo
:sufixo
set sufix=%P%
rem
rem define quantidade de barras
:barras
if not "%~1" == "" (
set count=%1
set count_swing=%1
)
rem
rem define o diretório dos arquivos
:diretorio
set tempdir=%TEMP%
rem 
rem define o nome dos arquivos
rem
:nomeiatxt
rem gráfico de maximas e minimas
set filename=%tempdir%\%sufix%.txt
rem gráfico de ranges
set filename-ranges=%tempdir%\ranges-%sufix%.txt
rem gráfico de volumes
set filename-volumes=%tempdir%\volumes-%sufix%.txt
rem gráfico completo
set filename-full=%tempdir%\full-%sufix%.txt
rem
rem gera os arquivos
:geratxt
if "%P%" == "MN1" goto :SWINGTRADE
if "%P%" == "W1" goto :SWINGTRADE
if "%P%" == "D1" goto :SWINGTRADE
goto :DAYTRADE
rem
rem day trade
:daytrade
rem gráfico de máximas e mínimas
if %minimo% == 1 (
mt bars %S% --date %Y%.%M%.%I% --period %P% --view ch --count %count% > %filename%
)
rem gráfico de ranges
if %ranges% == 1 (
mt bars %S% --date %Y%.%M%.%I% --period %P% --view r --count %count% > %filename-ranges%
)
rem gráfico de volumes
if %volumes% == 1 (
mt bars %S% --date %Y%.%M%.%I% --period %P% --view vol --count %count% > %filename-volumes%
)
rem gráfico completo
if %completo% == 1 (
mt bars %S% --date %Y%.%M%.%I% --period %P% --count %count% > %filename-full%
)
goto :ABRETXT
rem
rem swing trade
:swingtrade
rem gráfico de máximas e mínimas
if %minimo% == 1 (
mt bars %S% --period %P% --view ch --count %count_swing% > %filename%
)
rem gráfico de ranges
if %ranges% == 1 (
mt bars %S% --period %P% --view r --count %count_swing% > %filename-ranges%
)
rem gráfico de volumes
if %volumes% == 1 (
mt bars %S% --period %P% --view vol --count %count_swing% > %filename-volumes%
)
rem gráfico completo
if %completo% == 1 (
mt bars %S% --period %P% --count %count_swing% > %filename-full%
)
goto :ABRETXT
rem
rem abre os arquivos no bloco de notas
:ABRETXT
rem abre o gráfico de máximas e mínimas
if %minimo% == 1 (
start %filename%
)
rem abre o gráfico de ranges
if %ranges% == 1 (
start %filename-ranges%
)
rem abre o gráfico de volumes
if %volumes% == 1 (
start %filename-volumes%
)
rem abre o gráfico completo
if %completo% == 1 (
start %filename-full%
)
goto :EOF
rem
