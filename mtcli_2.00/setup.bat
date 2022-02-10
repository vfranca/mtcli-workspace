@echo off
rem mtcli
rem define variaveis de ambiente
set dotenvfile=%SystemDrive%/.env
set /p t=ativo:(ex. PETR4)
if %t%=="" (
set t=PETR4
)
set /p digitos=digitos:(ex. 2)
if %digitos%=="" (
set digitos=2
)
set p=Daily
set ano=2021
set mes=09
set dia=13
set r=300
set rr=1
set id=%ano%.%mes%.%dia%
call s %t%
rem echo SYMBOL=%t%
call conf DIGITS %digitos%
echo PERIOD=%p%
