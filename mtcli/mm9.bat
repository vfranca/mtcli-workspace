@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem médias móveis de 9 e de 20 períodos
rem set symbol=%T%
set mm_curta=9
set mm_longa=20
if "%~1" == "-h" (
echo medias moveis de 9 e de 20 periodos
echo fechamento
echo media movel de 9
echo media movel de 20
goto :EOF
)
mt bars %symbol% -p D1 -v c -c 1
mt mm %symbol% -p D1 -c %mm_curta%
mt mm %symbol% -p D1 -c %mm_longa%
