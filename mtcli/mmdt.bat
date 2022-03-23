@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem médias móveis do day trade
mt bars %SYMBOL% --view c --count 1 --period %PERIOD%
rem M5
if "PERIOD" == "M5" (
set medias=(20, 240)
)
rem M10
if "PERIOD" == "M10" (
set medias=(20, 120)
)
:media
for %%i in %medias% do (
mt mm %SYMBOL% --period %PERIOD% --count %%i
)
