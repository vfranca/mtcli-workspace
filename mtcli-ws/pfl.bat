@echo off
rem mtcli
call mtcli
if not "%~1"=="" (
call %DIR_PROFILES%\t%1
) else (
dir/b %DIR_PROFILES%\t*.bat
)
