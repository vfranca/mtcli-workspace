	@echo off
rem mtcli
rem abre no bloco de notas graficos intradiários
call mtcli
rem quantidade de barras
set count=678
rem cria a pasta dos arquivos
if not exist %dir_txt% (
mkdir %dir_txt%
)
rem exporta os arquivos
rem gráfico cheio
if /i "%1" == "f" (
mt bars %SYMBOL% -d %Y%.%M%.%I% -p %PERIOD% -c %count% > %DIR_TXT%\%txt_full%
start %dir_txt%\%txt_full%
goto :EOF
)
rem gráfico de ranges
if /i "%1" == "r" (
mt bars %SYMBOL% -d %Y%.%M%.%I% -p %PERIOD% -v r -c %count% > %dir_txt%\%txt_ranges%
start %dir_txt%\%txt_ranges%
goto :EOF
)
rem gráfico mínimo
mt bars %SYMBOL% -d %Y%.%M%.%I% -p %PERIOD% -v ch -c %count% > %dir_txt%\%txt_min%
start %dir_txt%\%txt_min%
