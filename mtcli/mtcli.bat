@echo off
rem variáveis do workspace
if not defined symbol set symbol=IBOV
if not defined digitos set digitos=0
if not defined period set period=D1
if not defined view set period=CH

if not defined currency set currency=BRL
if not defined leverage set leverage=1
if not defined size set size=1
if not defined spread set spread=0
if not defined lot set lot=1
if not defined risc set risc=200
if not defined risc_reward set risc_reward=3
if not defined profit set profit=9
if not defined stop set stop=-3
if not defined balance set balance=0

if not defined i set i=01
if not defined m set m=01
if not defined y set y=2024
rem if not defined intraday set intraday=%Y%.%M%.%I%

set dir_txt=GRAFICOS\TX
set txt_full=%SYMBOL%-%PERIOD%-%MONTH%-%DAY%F.txt
set txt_min=%SYMBOL%-%PERIOD%-%MONTH%-%DAY%.txt
set txt_ranges=%SYMBOL%-%PERIOD%-%MONTH%-%DAY%R.txt
set dir_exp=GRAFICOS\EX
