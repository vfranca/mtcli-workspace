@echo off
rem Aliases para comandos do mtcli
rem Médias móveis do intraday

rem ajuda
if "%1" == "-h" (
echo medias moveis simples do intraday
echo mm20 do m5
echo mm20 do m15
echo mm20 do h1
goto :EOF
)

rem fechamento
mt bars %t% --period daily --view c --count 1
rem média móvel simples de 20 períodos do m5
mt sma %t% --period m5 --count 20
rem média móvel simples de 20 periodos do m15
mt sma %t% --period m15 --count 20
rem média móvel simples de 20 períodos do h1
mt sma %t% --period h1 --count 20
