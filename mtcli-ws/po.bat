@echo off
REM marcação periodos
set cmd=%1
if "%cmd%" == "" (
	echo %periodos%
) else (
	set periodos=%cmd%
)
