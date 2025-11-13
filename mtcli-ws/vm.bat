@echo off
if  "%1" == "" (
	mt vm %SYMBOL% --period %PERIOD% --tipo %VOLUME% --periodos 5
) else (
	mt vm %SYMBOL% --period %PERIOD% --tipo %VOLUME% --periodos %1
)
