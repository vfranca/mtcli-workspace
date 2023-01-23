@echo off
rem mtcli
rem Copyright 2022 Valmir França
rem Desativa o modo intraday
set id=""
set PERIOD=W1
set VIEW=ohlc
call barras %*
