@echo off
REM marcação block
set cmd=%1
if "%cmd%" == "" (
	echo %block%
) else (
	set block=%cmd%
)
