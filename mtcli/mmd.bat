@echo off
rem Aliases para comandos do mtcli
rem Médias móveis do diário
rem entradas
set curta=20
set inter=50
set longa=150
rem ajuda
if "%1" == "-h" (
echo medias moveis do diario
echo fechamento
echo mm%curta%
echo mm%inter%
echo mm%longa%
goto :EOF
)
rem comandos
mt bars %t% --period daily --view c --count 1
sma %t% --period daily --count %curta%
sma %t% --period daily --count %inter%
sma %t% --period daily --count %longa%
