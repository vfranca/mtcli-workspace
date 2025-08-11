@echo off
if "%1" == "" (
set periodos=20
) else (
set periodos=%1
)
mt mm %SYMBOL% --period %PERIOD% --periodos %periodos% --tipo sma
