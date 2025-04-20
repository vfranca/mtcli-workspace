@echo off
rem mtcli
if "%1" == "" (
call w ch
) else (
call w %1
)
if "%2" == "" (
call q 500
) else (
call q %2
)
call :grafico
call term
goto :EOF

:grafico
call mt bars %SYMBOL% --period %PERIOD% --view %VIEW% --date %DAY% --count %COUNT% %sd% %n%
goto :EOF
