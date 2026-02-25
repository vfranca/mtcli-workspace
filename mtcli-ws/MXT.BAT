@echo off
if "%1" == "" (
	echo %MAX_TICKS%
) else (
	set MAX_TICKS=%1
)
