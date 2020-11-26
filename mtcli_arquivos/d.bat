@echo off
@rem aliases para comandos do mtcli
set a=2020
set m=11

if "%1" == "-h" (
echo d [dia] [mes] [ano]
echo vazio - nao define nenhum intraday
echo dia - define o dia do mes
echo dia mes ano define uma data especifica
goto :EOF
)


if "%1" == "" (
set d=""
echo data intraday vazia
goto :EOF
)

if "%2" == "" (
set d=%a%.%m%.%1
echo data intraday %a%.%m%.%1
goto :EOF
)

set d=%3.%2.%1
echo data intraday %3.%2.%1
