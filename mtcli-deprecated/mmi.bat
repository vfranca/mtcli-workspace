@echo off
rem mtcli
rem Copyright 2021 Valmir França
rem atalhos de comando
rem Médias móveis do intraday
set mm=20
set tf_operacional=m15
set tf_longo1=h1
set tf_longo2=h4
rem ajuda
if "%1" == "-h" (
echo medias moveis do intraday
echo fechamento
echo mm20 do %tf_operacional%
echo mm20 do %tf_longo1%
echo mm20 do %tf_longo2%
goto :EOF
)
mt bars %t% --period daily --view c --count 1
mt mm %t% --period %tf_operacional% --count %mm%
mt mm %t% --period %tf_longo1% --count %mm%
mt mm %t% --period %tf_longo2% --count %mm%
