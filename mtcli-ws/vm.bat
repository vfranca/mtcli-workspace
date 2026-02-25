@echo off
if  "%1" == "" (
	mt vm %SYMBOL% --period %PERIOD% --tipo %VOLUME% --periodos 10
) else (
	mt vm %SYMBOL% --period %PERIOD% --tipo %VOLUME% --periodos %1
)
