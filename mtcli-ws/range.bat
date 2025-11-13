@echo off
REM marcação range
set cmd=%1
if "%cmd%" == "" (
	echo %range%
) else (
	set range=%cmd%
)
