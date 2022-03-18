@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem médias móveis do day trade
mt bars %SYMBOL% --view c --count 1 --period %PERIOD%

set count=20
call :media
set count=200
call :media
goto :EOF

:media
mt mm %SYMBOL% --period M5 --count %count%
