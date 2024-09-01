@echo off
rem mtcli
rem variaveis de ambiente
rem symbol
call mtcli
if "%~1" == "" (
echo %SYMBOL%
goto :EOF
)
set SYMBOL=%1
set s=%SYMBOL%
rem digitos
if not "%2" == "" (call d %2)
