@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem médias móveis do day trade
mt bars %SYMBOL% --view c --count 1 --period %PERIOD%
rem m3
if %PERIOD% == M3 set medias=(20, 400)
rem m4
if %PERIOD% == M4 set medias=(20, 100, 300)
rem m5
if %PERIOD% == M5 set medias=(20, 60, 220)
rem m6
if %PERIOD% == M6 set medias=(20, 200)
rem m10
if %PERIOD% == M10 set medias=(20, 120)
rem m15
if %PERIOD% == M15 set medias=(20,120)
rem h1
if %PERIOD% == H1 set medias=(20, 80)
for %%i in %medias% do mt mm %SYMBOL% --period %PERIOD% --count %%i
