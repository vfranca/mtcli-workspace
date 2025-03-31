@echo off
rem variáveis do workspace
if not defined symbol set symbol=IBOV
if not defined digitos set digitos=0
if not defined period set period=D1
if not defined view set view=ch
if not defined count set count=20

if not defined moeda set moeda=BRL
if not defined ala set ala=1
if not defined tam set tam=1
if not defined spd set spd=0
if not defined lot set lot=1

if not defined r set r=200
if not defined rr set rr=3
if not defined mta set mta=9
if not defined lmt set lmt=-3
if not defined sld set sld=0

if not defined i set i=01
if not defined m set m=03
if not defined y set y=2025
if not defined day set day=""

set dir_txt=GRAFICOS\TX\%SYMBOL%
set dir_exp=GRAFICOS\EX\%SYMBOL%
set dir_tpl=TEMPLATES
set dir_bin=bin
