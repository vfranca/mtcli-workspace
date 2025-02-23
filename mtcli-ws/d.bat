@echo off
rem mtcli
rem marcações
rem digitos
call mtcli
if "%1" == "" (
echo %DIGITOS%
goto :EOF
)
set DIGITOS=%1
