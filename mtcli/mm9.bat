@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem médias móveis de 9 e de 20 períodos do diário
mt bars %SYMBOL% --period D1 --view c --count 1
mt mm %SYMBOL% --period D1 --count 9
mt mm %SYMBOL% --period D1 --count 20
