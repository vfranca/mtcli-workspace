@echo off
@rem aliases para comandos do mtcli
rem entradas
set aaaa=2021
set mm=01
set dd=%1
rem ajuda
if "%1" == "-h" (
echo d [dia] [mes] [ano]
echo vazio - nao define nenhum intraday
echo dia - define o dia do mes
echo dia mes ano define uma data especifica
goto :EOF
)
rem comandos
if "%1" == "" (
set d=""
echo data intraday vazia
goto :EOF
)
if "%2" == "" (
set d=%aaaa%.%mm%.%dd%
echo data intraday %aaaa%.%mm%.%dd%
goto :EOF
)
set d=%3.%2.%1
echo data intraday %3.%2.%dd%
