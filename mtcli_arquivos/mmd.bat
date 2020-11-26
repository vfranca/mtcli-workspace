@echo off
rem Aliases para comandos do mtcli
rem Médias móveis do diário


rem ajuda
if "%1" == "-h" (
echo medias moveis do diario
echo fechamento
echo mm20
echo mm50
echo mm200
goto :EOF
)

mt bars %t% --period daily --view c --count 1
mt sma %t% --period daily --count 20
mt sma %t% --period daily --count 50
mt sma %t% --period daily --count 200
