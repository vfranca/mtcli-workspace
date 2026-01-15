@echo off
REM marcação timezone
set cmd=%1
if "%cmd%" == "" (
	echo %timezone%
) else (
	set timezone=%cmd%
)
