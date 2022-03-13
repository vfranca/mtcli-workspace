@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem médias móveis de 20 e 200 períodos
mt bars %SYMBOL% --period d1 --view c --count 1
set count=20
call :media
set count=200
call :media
goto :EOF

:media
mt mm %SYMBOL% --period d1 --count %count%
