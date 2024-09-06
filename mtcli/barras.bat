@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
call p %PERIOD%
call w %VIEW%
if "%1" == "" (
call q 114
call :grafico
) else (
call q %1
call :grafico
)
rem call :media
rem time /t
call term
goto :EOF

:grafico
mt bars %SYMBOL% --period %PERIOD% --date %INTRADAY% --view %VIEW% --count %count%
goto :EOF

:media
mt mm %SYMBOL% --period %PERIOD% --count 20
rem goto :EOF
