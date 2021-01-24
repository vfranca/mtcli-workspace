@echo off
rem aliases para comandos do mtcli
rem gerencia as variáveis de ambiente
rem entradas
rem ajuda
rem comandos
cls
rem lista as variáveis de ambiente
if "%1" == "" (
echo symbol=%t%
echo period=%p%
echo date=%d%
echo mt5=%mt5%
dotenv --file C:/.env get DIGITS
dotenv --file C:/.env get CSV_PATH
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
