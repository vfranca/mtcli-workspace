@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem OHLC do diario
set view=ohlc
set count=100
mt bars %symbol% --view %view% --count %count% --period D1
