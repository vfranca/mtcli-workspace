@echo off
rem mtcli
rem range médio
if "%~1" == "" (
mt rm %symbol% --period D1 --count 20
goto :EOF
)
mt rm %symbol% --period D1 --count %1
