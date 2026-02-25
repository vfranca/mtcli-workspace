@echo off
if "%1" == "" (
	echo %tick_style%
) else (
	set tick_style=%1
)
