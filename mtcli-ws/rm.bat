@echo off
rem define o período
if not "%1" == "" (
set periodos=%1
) else (
set periodos=5
)
mt rm %SYMBOL% --period %PERIOD% --periodos %periodos%

