@echo off
rem mtcli
rem variáveis de ambiente
rem risc reward
call mtcli
if "%1" == "" (
echo %rr%
goto :EOF
)
set rr=%1
