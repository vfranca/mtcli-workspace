@echo off
rem Prepara o ambiente para backtest
rem variaveis de entrada
set s=%1
set d=%2
set m=%3
set y=2020
set p=%4
set nomearquivo=%p%
set tempdir=var
rem ajuda
if "%1" == "" (
echo Prepara o terminal para backtest
echo uso:
echo "test <ativo> <dia> <mes> <periodo>"
goto :EOF
)
rem comandos
rem gera os arquivos dos graficos
mt bars %s% --date %y%.%m%.%d% --period %p% --count 109 > %tempdir%\%nomearquivo%-default.txt
mt bars %s% --date %y%.%m%.%d% --period %p% --view ch --count 109 > %tempdir%\%nomearquivo%-canal.txt
mt bars %s% --date %y%.%m%.%d% --period %p% --view r --count 109 > %tempdir%\%nomearquivo%-ranges.txt
rem abre os arquivos no bloco de notas
start %tempdir%\%nomearquivo%-default.txt
start %tempdir%\%nomearquivo%-canal.txt
start %tempdir%\%nomearquivo%-ranges.txt
