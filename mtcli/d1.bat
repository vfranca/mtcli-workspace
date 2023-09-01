@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
rem Desativa o modo intraday
set id=""
rem
set PERIOD=D1
set VIEW=ch
call barras %*
