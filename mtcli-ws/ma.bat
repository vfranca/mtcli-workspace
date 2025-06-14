@echo off
rem mtcli
rem media movel
call mtcli
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


mt ma %SYMBOL% --period %PERIOD% --count %q% --date %Y%-%M%-%I% --time %hr%
goto :EOF

:time
mt ma %SYMBOL% --period %PERIOD% --count %q% --date %Y%-%M%-%I% --time %2
goto :EOF
