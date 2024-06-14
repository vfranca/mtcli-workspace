@echo off
rem mtcli
rem variáveis de ambiente
rem ano
rem
if "%1" == "" (
echo %Y%
goto :EOF
)
set y=%1
rem
rem redefine a data intraday
rem
set id=%Y%.%M%.%I%
