@echo off
if "%1" == "" (
	echo %mtcli_symbol%
) else (
	set mtcli_symbol=%1
)
