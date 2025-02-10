@echo off
rem mtcli
rem marcações
rem symbol
call mtcli
if "%~1" == "" (
echo SYMB %SYMBOL%
goto :EOF
)
set SYMBOL=%1
if not "%2" == "" (call d %2)
call term
