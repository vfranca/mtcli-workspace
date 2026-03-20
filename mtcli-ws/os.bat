@echo off
if "%1" == "" (
	echo %session_open_offset_seconds%
) else (
	set session_open_offset_seconds=%1
)
