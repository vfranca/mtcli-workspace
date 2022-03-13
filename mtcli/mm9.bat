@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem médias móveis de 9 e de 20 períodos do diário
mt bars %SYMBOL% --period D1 --view c --count 1
set count=9
call :media
set count=20
call :media
goto :EOF

:media
mt mm %SYMBOL% --period D1 --count %count%
