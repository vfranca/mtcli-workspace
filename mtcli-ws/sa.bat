@echo off
if not "%1" == "" (
set bars=%1
) else (
set bars=5
)
@mt sa %SYMBOL% --period %PERIOD% --count %bars%
