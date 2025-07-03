@echo off
rem mtcli
rem marcações
rem volume
rem
if "%1" == "" (
echo %VOLUME%
goto :EOF
)
set volume=%1
