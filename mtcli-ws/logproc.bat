@echo off
if "%1" == "" (
	echo %mtcli_log_per_process%
) else (
	set mtcli_log_per_process=%1
)
