@echo off
rem mtcli
rem define variaveis de ambiente
set dotenvfile=%SystemDrive%/.env
set /p t=ativo:
set digitos=2
set p=Daily
set /p ano=ano:
set /p mes=mes:
set /p dia=dia:
set r=300
set rr=1
set id=%ano%.%mes%.%dia%
echo ativo=%t%
dotenv --file %dotenvfile% set DIGITS %digitos%
echo periodo=%p%
echo intraday=%ano%.%mes%.%dia%
