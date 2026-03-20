@echo off
if "%1" == "" (
	echo %session_open%
) else (
	set session_open=%1
)
