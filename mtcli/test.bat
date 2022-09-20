@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem ferramentas de trading
rem backtest 
set s=%SYMBOL%
set d=%1
set m=%MES%
set y=%ANO%
set p=%PERIOD%
set file=%p%
set count=540
set tempdir=%TEMP%
rem **********
mt bars %s% --date %y%.%m%.%d% --period %p% --count %count% > %tempdir%\%file%-completo.txt
mt bars %s% --date %y%.%m%.%d% --period %p% --view ch --count %count% > %tempdir%\%file%-canal.txt
rem mt bars %s% --date %y%.%m%.%d% --period %p% --view r --count %count% > %tempdir%\%file%-ranges.txt
rem abre os arquivos no bloco de notas
start %tempdir%\%file%-canal.txt
start %tempdir%\%file%-completo.txt
rem start %tempdir%\%file%-ranges.txt
