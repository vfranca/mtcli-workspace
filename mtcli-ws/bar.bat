@echo off
rem mtcli
if "%1" == "" (
call q 580
call :grafico
) else (
call q %1
call :grafico
)
call term
goto :EOF

:grafico
call mt bars %SYMBOL% --period %PERIOD% --view %VIEW% --date %DAY% --count %COUNT% --volume %VOLUme% %sd% %nUM%
goto :EOF
