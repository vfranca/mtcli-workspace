@echo off
rem mtcli
if "%1" == "" (
call q 20
call :grafico
) else (
call q %1
call :grafico
)
call term
goto :EOF

:grafico
call mt bars %SYMBOL% --period %PERIOD% --view %VIEW% --date %DAY% --count %COUNT% %sd% %n%
goto :EOF
