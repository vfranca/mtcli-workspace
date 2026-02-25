@echo off
if "%1" == "" (
@mt atr --symbol %symbol% --period %period% --bars 10
) else (
@mt atr --symbol %symbol% --period %period% --bars %1
)