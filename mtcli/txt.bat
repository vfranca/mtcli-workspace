@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem abre no bloco de notas graficos intradiários
rem definição de parâmetros
rem define o ativo
if not defined S (set /p s=ativo:)
rem define o período
if not defined P (set /p p=periodo:)
rem define ano, mês e dia
if not "%P%" == "MN1" (
if not "%P%" == "W1" (
if not "%P%" == "D1" (
if not defined Y (set /p y=ano:)
if not defined M (set /p m=mes:)
if not defined I (set /p i=dia:)
)))
rem define a quantidade de candles
if not "%~1" == "" (
set count=%1
set count_swing=%1
) else (
set count=678
set count_swing=20
)
rem define o diretório dos arquivos
set dir_txt=txt
rem define os nomes dos arquivos
set txt_min=%P%-%S%-%M%-%I%.txt
set txt_ranges=%P%R-%S%-%M%-%I%.txt
set txt_full=M%P%-%S%-%M%-%I%.txt
rem cria a pasta dos arquivos
if not exist %dir_txt% (
mkdir %dir_txt%
)
rem salva os arquivos
if "%P%" == "MN1" goto :SWINGTRADE
if "%P%" == "W1" goto :SWINGTRADE
if "%P%" == "D1" goto :SWINGTRADE
goto :DAYTRADE
rem salva os gráficos para day trade
:daytrade
rem salva o gráfico mínimo
mt bars %S% -d %Y%.%M%.%I% -p %P% -v ch -c %count% > %dir_txt%\%txt_min%
rem salva o gráfico de ranges
mt bars %S% -d %Y%.%M%.%I% -p %P% -v r -c %count% > %dir_txt%\%txt_ranges%
rem salva o gráfico completo
mt bars %S% -d %Y%.%M%.%I% -p %P% -c %count% > %dir_txt%\%txt_full%
goto :ABRETXT
rem salva os gráficos para swing trade
:swingtrade
rem salva o gráfico mínimo
mt bars %S% -p %P% -v ch -c %count_swing% > %dir_txt%\%txt_min%
rem salva o gráfico de ranges
mt bars %S% -p %P% -v r -c %count_swing% > %dir_txt%\%txt_ranges%
rem salva o gráfico completo
mt bars %S% -p %P% -c %count_swing% > %dir_txt%\%txt_full%
goto :ABRETXT
rem abre os arquivos no bloco de notas
:ABRETXT
start %dir_txt%\%txt_min%
start %dir_txt%\%txt_ranges%
start %dir_txt%\%txt_full%
