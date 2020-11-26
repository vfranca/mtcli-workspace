@echo off
rem aliases para comandos do mtcli
rem gerencia as variáveis de ambiente
cls

rem lista as variáveis de ambiente
if "%1" == "" (
echo symbol=%t%
echo period=%p%
echo date=%d%
dotenv --file C:/.env get DIGITS
goto :EOF
)

rem inicia as variáveis de ambiente
if "%1" == "init" (
set t=petr4
echo symbol PETR4
set p=m15
echo period Daily
set d=""
echo data vazio
prompt $$
echo alterado prompt
title mtcli
echo alterado titulo do terminal
echo diretorio pronto para trabalho
goto :EOF
)
