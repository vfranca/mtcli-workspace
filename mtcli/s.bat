@echo off
rem mtcli
rem variaveis de ambiente
rem symbol
call mtcli
if "%~1" == "" (
echo SYMBOL %SYMBOL%
goto :EOF
)
set SYMBOL=%1
if not "%2" == "" (call d %2)
call term
