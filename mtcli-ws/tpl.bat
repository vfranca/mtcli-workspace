@echo off
rem mtcli
call mtcli
if not "%1" == "" (
call %DIR_TPL%\t%1
) else (
dir/b %DIR_TPL%\t*.bat
)
