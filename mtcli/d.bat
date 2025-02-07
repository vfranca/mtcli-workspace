@echo off
rem mtcli
rem variáveis de ambiente
rem digitos
call mtcli
if "%1" == "" (
echo DIGITOS %DIGITOS%
goto :EOF
)
set DIGITOS=%1
