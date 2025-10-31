@echo off
REM marcação by
set cmd=%1
if "%cmd%" == "" (
	echo %by%
) else (
	set by=%cmd%
)
