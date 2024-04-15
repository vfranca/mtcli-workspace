@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem abre no bloco de notas graficos intradiários
rem imputs
rem ativo
if not defined S (set /p s=ativo:)
rem período
if not defined P (set /p p=periodo:)
rem ano, mês e dia
if not "%P%" == "MN1" (
if not "%P%" == "W1" (
if not "%P%" == "D1" (
if not defined Y (set /p y=ano:)
if not defined M (set /p m=mes:)
if not defined I (set /p i=dia:)
)))
rem quantidade de barras
if not "%~1" == "" (
set count=%1
set count_swing=%1
) else (
set count=678
set count_swing=20
)
rem diretório dos arquivos
set dir_txt=tx\%SYMBOL%
rem nomes dos arquivos
set txt_min=%P%-%S%-%M%-%I%.txt
set txt_ranges=%P%R-%S%-%M%-%I%.txt
set txt_full=M%P%-%S%-%M%-%I%.txt
rem cria a pasta dos arquivos
if not exist %dir_txt% (
mkdir %dir_txt%
)
rem exporta os arquivos
rem exporta gráficos extradiários
if "%P%" == "MN1" goto :SWINGTRADE
if "%P%" == "W1" goto :SWINGTRADE
if "%P%" == "D1" goto :SWINGTRADE
goto :DAYTRADE
rem exporta gráficos intradiários
:daytrade
rem exporta o gráfico mínimo
mt bars %S% -d %Y%.%M%.%I% -p %P% -v ch -c %count% > %dir_txt%\%txt_min%
rem exporta o gráfico de ranges
mt bars %S% -d %Y%.%M%.%I% -p %P% -v r -c %count% > %dir_txt%\%txt_ranges%
rem exporta o gráfico completo
mt bars %S% -d %Y%.%M%.%I% -p %P% -c %count% > %dir_txt%\%txt_full%
goto :ABRETXT
rem exporta gráficos extradiários
:swingtrade
rem exporta o gráfico mínimo
mt bars %S% -p %P% -v ch -c %count_swing% > %dir_txt%\%txt_min%
rem exporta o gráfico de ranges
mt bars %S% -p %P% -v r -c %count_swing% > %dir_txt%\%txt_ranges%
rem exporta o gráfico completo
mt bars %S% -p %P% -c %count_swing% > %dir_txt%\%txt_full%
goto :ABRETXT
rem abre os arquivos no bloco de notas
:ABRETXT
start %dir_txt%\%txt_ranges%
start %dir_txt%\%txt_full%
start %dir_txt%\%txt_min%
