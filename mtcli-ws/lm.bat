@echo off
REM marcação limite de cotações
set cmd=%1
if "%cmd%" == "" (
	echo %limit%
) else (
	set limit=%cmd%
)
