@echo off
rem mtcli
rem marcações
rem lot
call mtcli
if "%1" == "" (
echo LOTE %LOT%
goto :EOF
)
set lot=%1
