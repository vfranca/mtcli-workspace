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
rem define o ativo
if not defined S (set /p s=ativo:)
rem define o período
if not defined P (set /p p=periodo:)
rem define o ano
if not "%P%" == "MN1" (
if not "%P%" == "W1" (
if not "%P%" == "D1" (
if not defined Y (set /p y=ano:)
)))
rem define o mês
if not "%P%" == "MN1" (
if not "%P%" == "W1" (
if not "%P%" == "D1" (
if not defined M (set /p m=mes:)
)))
rem define o dia
if not "%P%" == "MN1" (
if not "%P%" == "W1" (
if not "%P%" == "D1" (
if not defined I (set /p i=dia:)
)))
rem define o prefixo do nome do arquivo txt
set prefixo=%S%-%P%
rem define o sufixo do nome do arquivo txt
set sufixo=%I%-%M%-%Y%.txt
rem define quantidade de barras
if not "%~1" == "" (
set count=%1
set count_swing=%1
)
rem define o diretório dos arquivos
set dir_txt=%TEMP%
rem define o nome dos arquivos
rem gráfico minimo
set arquivo_txt=%dir_txt%\%prefixo%-%sufixo%
rem gráfico de ranges
set arquivo_txt-ranges=%dir_txt%\%prefixo%-ranges-%sufixo%
rem gráfico completo
set arquivo_txt-full=%dir_txt%\%prefixo%-full-%sufixo%
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
rem gráfico mínimo
if %minimo% == 1 (
mt bars %S% --date %Y%.%M%.%I% --period %P% --view ch --count %count% > %arquivo_txt%
)
rem gráfico de ranges
if %ranges% == 1 (
mt bars %S% --date %Y%.%M%.%I% --period %P% --view r --count %count% > %arquivo_txt-ranges%
)
rem gráfico completo
if %completo% == 1 (
mt bars %S% --date %Y%.%M%.%I% --period %P% --count %count% > %arquivo_txt-full%
)
goto :ABRETXT
rem
rem swing trade
:swingtrade
rem gráfico mínimo
if %minimo% == 1 (
mt bars %S% --period %P% --view ch --count %count_swing% > %arquivo_txt%
)
rem gráfico de ranges
if %ranges% == 1 (
mt bars %S% --period %P% --view r --count %count_swing% > %arquivo_txt-ranges%
)
rem gráfico completo
if %completo% == 1 (
mt bars %S% --period %P% --count %count_swing% > %arquivo_txt-full%
)
goto :ABRETXT
rem
rem abre os arquivos no bloco de notas
:ABRETXT
rem abre o gráfico mínimo
if %minimo% == 1 (
start %arquivo_txt%
)
rem abre o gráfico de ranges
if %ranges% == 1 (
start %arquivo_txt-ranges%
)
rem abre o gráfico completo
if %completo% == 1 (
start %arquivo_txt-full%
)
goto :EOF
rem
