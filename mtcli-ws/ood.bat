@echo off
rem mtcli
rem marcações
rem abertura do dia
if "%1" == "" (
echo %ood%
goto :EOF
)
set ood=%1
call sv /q
