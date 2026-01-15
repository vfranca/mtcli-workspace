@echo off
if "%1" == "" (
	echo %TICK_SIZE%
) else (
	set tick_size=%1
)
