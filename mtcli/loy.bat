@echo off
rem mtcli
rem marcações
rem mínima de ontem
call mtcli
if "%1" == "" (
echo MIN ONT %loy%
goto :EOF
)
set loy=%1
