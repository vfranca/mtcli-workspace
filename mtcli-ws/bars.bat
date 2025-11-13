@echo off
REM marcação by
set cmd=%1
if "%cmd%" == "" (
	echo %bars%
) else (
	set bars=%cmd%
)
