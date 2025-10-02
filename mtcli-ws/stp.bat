@echo off
REM marcação step
set cmd=%1
if "%cmd%" == "" (
	echo %step%
) else (
	set step=%cmd%
)
