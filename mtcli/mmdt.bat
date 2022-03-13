@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem médias móveis do day trade
mt bars %SYMBOL% --view c --count 1 --period %PERIOD%
mt mm %SYMBOL% --period M5 --count 20
mt mm %SYMBOL% --period M5 --count 240
