@echo off
rem mtcli
rem marcações
rem digitos
call mtcli
if "%1" == "" (
echo DIG %DIGITOS%
goto :EOF
)
set DIGITOS=%1
