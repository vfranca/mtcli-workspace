@echo off
rem mtcli
rem marcações
rem year
call mtcli
if "%1" == "" (
echo A %Y%
goto :EOF
)
set y=%1
call intra on
