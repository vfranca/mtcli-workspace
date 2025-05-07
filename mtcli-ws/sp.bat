@echo off
rem mtcli
rem marcações
rem stop padrão
call mtcli
if "%1" == "" (
echo %SP%
goto :EOF
)
set sp=%1
set r=%1
