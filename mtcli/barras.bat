@echo off
rem pasta mtcli
rem Copyright 2021-2023 Valmir França da Silva
rem https://github.com/vfranca/
call p %PERIOD%
call w %VIEW%
cls
if "%1" == "" (
set count=110
call :grafico
) else (
set count=%1
call :grafico
)
rem goto :media
goto :EOF

:grafico
mt bars %SYMBOL% --period %PERIOD% --date %ID% --view %VIEW% --count %count%
goto :EOF

:media
mt mm %SYMBOL% --period %PERIOD% --count 20
goto :EOF
