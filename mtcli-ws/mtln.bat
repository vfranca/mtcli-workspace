@echo off
if "%1" == "" (
	echo %mtcli_log_name%
) else (
	set mtcli_log_name=%1
)
