@echo off
rem mtcli
rem define variaveis de ambiente
set dotenvfile=%SystemDrive%/.env
set /p t=ativo:
set /p digitos=digitos:
set /p p=periodo:
set /p ano=ano:
set /p mes=mes:
set /p dia=dia:
set /p r=risco:
set /p rr=risco/retorno:
set id=%ano%.%mes%.%dia%
echo ativo=%t%
dotenv --file %dotenvfile% set DIGITS %digitos%
echo periodo=%p%
echo intraday=%ano%.%mes%.%dia%
