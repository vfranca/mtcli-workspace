@echo off
rem mtcli
rem backtest 
set /p s=ativo:
set /p d=dia:
set /p m=mes:
set /p y=ano:
set /p p=tempo grafico:
set file=%p%
set count=114
set tempdir=%TEMP%
rem **********
if "%1" == "-h" (
echo gera os arquivos dos graficos para backtest
goto :EOF
)
rem *****
mt bars %s% --date %y%.%m%.%d% --period %p% --count %count% > %tempdir%\%file%-default.txt
mt bars %s% --date %y%.%m%.%d% --period %p% --view ch --count %count% > %tempdir%\%file%-canal.txt
mt bars %s% --date %y%.%m%.%d% --period %p% --view r --count %count% > %tempdir%\%file%-ranges.txt
rem abre os arquivos no bloco de notas
start %tempdir%\%file%-default.txt
start %tempdir%\%file%-canal.txt
start %tempdir%\%file%-ranges.txt
