@echo off
rem mtcli
rem variáveis de ambiente
rem risc
call mtcli
if "%1" == "" (
echo RISCO %R%
goto :EOF
)
set r=%1
