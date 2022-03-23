@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem médias móveis de 9 e de 20 períodos
mt bars %SYMBOL% --period %PERIOD% --view c --count 1
set medias=(9, 20)
for %%i in %medias% do (
mt mm %SYMBOL% --period %PERIOD% --count %%i
)
