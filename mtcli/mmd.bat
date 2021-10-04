@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem Médias móveis do diário
set curta=50
set inter=100
set longa=200
if "%1" == "-h" (
echo medias moveis do diario
echo fechamento
echo mm%curta%
echo mm%inter%
echo mm%longa%
goto :EOF
)
mt bars %t% --period daily --view c --count 1
mt mm %t% --period daily --count %curta%
mt mm %t% --period daily --count %inter%
mt mm %t% --period daily --count %longa%
