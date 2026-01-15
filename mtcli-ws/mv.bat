@echo off
if "%1" == "" (
	echo %min_volume%
) else (
	set min_volume=%1
)
