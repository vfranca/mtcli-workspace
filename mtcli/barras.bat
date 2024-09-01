@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
call p %PERIOD%
call w %VIEW%
if "%1" == "" (
set count=110
call :grafico
) else (
set count=%1
call :grafico
)
rem call :media
rem time /t
goto :EOF

:grafico
mt bars %SYMBOL% --period %PERIOD% --date %INTRADAY% --view %VIEW% --count %count%
goto :EOF

:media
mt mm %SYMBOL% --period %PERIOD% --count 20
rem goto :EOF
