@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem média móvel de 20 períodos
set symbol=%T%
set mm=20
if "%~1" == "-h" (
echo media movel de 20 periodos
echo fechamento
echo media movel de 20
goto :EOF
)
mt bars %symbol% -p daily -v c -c 1
mt mm %symbol% --period %p% --count %mm%
