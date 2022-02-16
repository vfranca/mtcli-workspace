@echo off
rem mtcli
rem média móvel  do diário
if "%1" == "" (
mt mm %symbol% --period D1 --count 20
goto :EOF
)
mt mm %symbol% --period D1 --count %1
