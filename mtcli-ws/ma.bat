@echo off
rem mtcli
rem media movel
rem Exibe uma média de n barras
if not "%1" == "" (
set q=%1
) else (
rem exibe a ema20
set q=20
)
rem exibe a média móvel de um horário
if not "%2" == "" (
goto :time
)


mt ma %SYMBOL% --period %PERIOD% --count %q% --date %Y%-%M%-%I%
goto :EOF

:time
mt ma %SYMBOL% --period %PERIOD% --count %q% --date %Y%-%M%-%I% --time %2
goto :EOF
