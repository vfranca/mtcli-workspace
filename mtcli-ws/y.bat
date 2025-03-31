@echo off
rem mtcli
rem marcações
rem year
call mtcli
if "%1" == "" (
echo %Y%
goto :EOF
)
set y=%1
rem call intra on
