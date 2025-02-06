	@echo off
rem mtcli
rem abre no bloco de notas graficos intradiários
call mtcli
rem define view
call w ch
if /i "%1" == "f" (call w full)
if /i "%1" == "r" (call w r)
rem define count
call q 678
rem define nome do arquivo
set file_txt=%SYMBOL%-%PERIOD%-%M%-%I%-%VIEW%.txt
rem cria a pasta dos arquivos
if not exist %dir_txt% (
mkdir %dir_txt%
)
rem exporta os arquivos
mt bars %SYMBOL% --period %PERIOD% --view %VIEW% --count %COUNT% --date %Y%.%M%.%I% > %DIR_TXT%\%FILE_txt%
start %DIR_TXT%\%FILE_TXT%
