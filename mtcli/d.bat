@echo off
rem mtcli
rem variáveis de ambiente
rem digitos
call mtcli
if "%1" == "" (
echo %DIGITOS%
goto :EOF
)
set DIGITOS=%1
