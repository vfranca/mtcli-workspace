@echo off
rem mtcli
rem marcações
rem fechamento de ontem
call mtcli
if "%1" == "" (
echo FECH ONT %coy%
goto :EOF
)
set coy=%1
