@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem médias móveis de 20 e 200 períodos
set symbol=%T%
set mm_curta=20
set mm_longa=200
if "%~1" == "-h" (
echo medias moveis de 20 e de 200 periodos
echo fechamento
echo media movel de 20
echo media movel de 200
goto :EOF
)
mt bars %symbol% -p daily -v c -c 1
mt mm %symbol% -p daily -c %mm_curta%
mt mm %symbol% -p daily -c %mm_longa%
