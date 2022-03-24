@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem médias móveis do day trade
mt bars %SYMBOL% --view c --count 1 --period %PERIOD%
if %PERIOD% == M3 set medias=(20, 400)
if %PERIOD% == M4 set medias=(20, 300)
if %PERIOD% == M5 set medias=(20, 240)
if %PERIOD% == M6 set medias=(20, 200)
if %PERIOD% == M10 set medias=(20, 120)
if %PERIOD% == M15 set medias=(20, 80)
if %PERIOD% == H1 set medias=(20, 80)
for %%i in %medias% do mt mm %SYMBOL% --period %PERIOD% --count %%i
