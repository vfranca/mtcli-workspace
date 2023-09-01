@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem variação percentual da barra do diário
mt bars %SYMBOL% --view var --period D1 --count 1
