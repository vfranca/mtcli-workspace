	@echo off
rem mtcli
rem abre no bloco de notas graficos intradiários
rem
rem imputs
rem
rem diretório dos arquivos
set dir_txt=GRAFICOS\TX\%SYMBOL%
rem
rem
rem ativo
if not defined S (set /p s=ativo:)
rem
rem
rem período
if not defined P (set /p p=periodo:)
rem
rem
rem ano, mês e dia
if not "%P%" == "MN1" (
if not "%P%" == "W1" (
if not "%P%" == "D1" (
if not defined Y (set /p y=ano:)
if not defined M (set /p m=mes:)
if not defined I (set /p i=dia:)
)))
rem
rem
rem quantidade de barras
set count=678
rem
rem
rem
rem nomes dos arquivos
set txt_min=%S%-%P%-%M%-%I%.txt
set txt_ranges=%S%-%P%R-%M%-%I%.txt
set txt_full=%S%-%P%F-%M%-%I%.txt
rem
rem
rem cria a pasta dos arquivos
if not exist %dir_txt% (
mkdir %dir_txt%
)
rem
rem exporta os arquivos
rem gráfico cheio
if "%1" == "f" (
mt bars %S% -d %Y%.%M%.%I% -p %P% -c %count% > %dir_txt%\%txt_full%
start %dir_txt%\%txt_full%
goto :EOF
)
rem gráfico de ranges
if "%1" == "r" (
mt bars %S% -d %Y%.%M%.%I% -p %P% -v r -c %count% > %dir_txt%\%txt_ranges%
start %dir_txt%\%txt_ranges%
goto :EOF
)
rem gráfico mínimo
mt bars %S% -d %Y%.%M%.%I% -p %P% -v ch -c %count% > %dir_txt%\%txt_min%
start %dir_txt%\%txt_min%
