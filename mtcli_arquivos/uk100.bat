@echo off
rem variaveis de entrada
set prefix=uk100
set sufix=cash
set digits=0
rem
call mtx xm
call dg %digits%
call s %prefix%%sufix%
rem start %prefix%.txt
rem start %prefix%.xls