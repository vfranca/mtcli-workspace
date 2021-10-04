@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem médias móveis de 8 e 20 períodos
set symbol=%T%
set mm_curta=8
set mm_longa=20
if "%~1" == "-h" (
echo medias de 8 e de 20 periodos
echo fechamento
echo media movel de 8
echo media movel de 20
goto :EOF
)
mt bars %symbol% -p daily -v c -c 1
mt mm %symbol% -p daily -c %mm_curta%
mt mm %symbol% -p daily -c %mm_longa%
