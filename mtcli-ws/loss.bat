@echo off
REM marcação loss limit
set cmd=%1
if "%cmd%" == "" (
	echo %loss_limit%
) else (
	set loss_limit=%cmd%
)
